
function get_line_csv( file ) {

        eof = getline < file

        if (eof <= 0) {

            print "--- error ----" $file

            }

# preserve line 

        eline = $0

# clean quotes, at start and final of each field

        for (n = 1; n <= NF; n++ ) {

            gsub ("^\"","",$(n));

            gsub ("\"$","",$(n));

            }

# reload line

        $0 = eline;

        return eof;
}


BEGIN {

    FS = ",";

    RS = "\n";

    cnt = 0;

    ndocs = 0;

    date_cmd = "date --iso-8601=seconds " ;

    uuid_cmd = "uuid -v 1 -m ";

    k = 0
}

# loop of stdio file list
{

# determina a sequencia de arquivos para o documento
    
    print " raw: (" $0 ") "

# clean quotes

    for (n = 1; n <= NF; n++ ) {

        gsub ("^\"","",$(n));

        gsub ("\"$","",$(n));

        }

# nome dos campos

    for (n = 2; n <= NF; n++ ) {

        fields[cnt][n-1] = $(n);

        }

# nome do arquivo

    name[cnt] = $1

# numero de campos, sem o nome do arquivo
    
    size[cnt] = NF + 1 

# prepara ultimo registro lido

    lock[cnt] = 0;

    line[cnt] = "";

# bypass headers

    eof = get_line_csv( $1 );

#    print " raw in: (" $0 ") "

# novo arquivo

    cnt++;

} 

END {

# full merge balance line

# todos os arquivos devem ter na 1 coluna a chave principal e estarem ordenados

# busca o conteudo de cada arquivo na ordem especificada pelo arquivo de headers

# document file: file = "id_aforamento.json"

    ndocs = 0

    eof = 1;

    while ( eof ) {

# balance line 

       for (k = 0; k < cnt; k++ ) {


            if (lock[k] == 0) {

# get a new line

                eof = get_line_csv(name[k]) 

                eline = $0

#                print " in : " name[k] " new line (" $0 ") "

                }

            else {

# get last line

                $0 = line[k] 

           #     $1 = $1

                lock[k] = 0;

                print " in : " name[k] " last line (" $0 ") "

                }   


# get a valid (no header) line

            if (k == 0) {

            # o primeiro arquivo eh a referencia, nao pode ter fiducial repetido. 

                fiducial = $1;

# determina o uuid e a data

                date_cmd | getline date; close (date_cmd);

                uuid_cmd | getline uuid; close (uuid_cmd);
        
                print "{ ";

                print "\"uuid\" : \"" uuid "\",";    

                print "\"date\" : \"" date "\",";    
    
                print "\"fiducial\" : \"" fiducial "\",";
        
                }   

            check = $1;

            # print " file: " k " fiducial : (" fiducial ") check : (" check ") "

            if (fiducial == check) {

                tag = name[k]

                gsub (".csv.ok","",tag); 

                print " \"" tag "\" : {"
                
                for (i = 1; i < size[k] - 1; i++ ) {
        
                    gsub ("^\"","",$(i));

                    gsub ("\"$","",$(i));

                    print  "\t\"" fields[k][i] "\" : \"" $(i) "\","

                    }
            
                print "\t}"

# stay in this file until ge

                lock[k] = 0

                if (k > 0) k = k - 1;

                }

            else if (fiducial < check) {
            
                lock[k] = 1;

                line[k] = $0

                # print "line : {" line[k] "} (" $0 ")"

                }

            else {

                print ">>> ERROR <<< " fiducial " ge " check
        
                }
            }


# close document: close (file);

        ndocs = ndocs + 1

        if (ndocs > 100) {

            eof = 0;

            }

        }

}
        

