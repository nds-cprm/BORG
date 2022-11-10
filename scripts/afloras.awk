#
#   script para preparar arquivos .json atraves de correspondencias de diversos
#   arquivos com informacoes separadas por csv
#
#   todo:
#   multicampos devem ser na forma 
#   "chave" : [ { conteudos }, { conteudos }, { conteudos } ],
#
#   por simplicidade:  
#   posteriormente },\r],\r deve ser substituido por }\r],\r
#
#   agsb@cprm 10/2022
#
#

#
# get a line from a named file
# preserve $0 and wipe " from $1...$n
#
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


#
# define parameters
#
BEGIN {

    FS = ",";

    RS = "\n";

    cnt = 0;

    ndocs = 0;

    date_cmd = "date --iso-8601=seconds " ;

    uuid_cmd = "uuid -v 1 -m ";

}

#
# loop of stdio file list
#
{

    if ( match ($0, "^#") )  next;

# determina a sequencia de arquivos para o documento
    
    # print " raw: (" $0 ") "

# clean quotes

    for (n = 1; n <= NF; n++ ) {

        gsub ("^\"","",$(n));

        gsub ("\"$","",$(n));

        }

# nome dos campos

    for (n = 2; n <= NF; n++ ) {

        fields[cnt][n-1] = $(n);

        }

# nome do arquivo para acesso

    name[cnt] = $1

# nome do grupo de informação

    tag[cnt] = name[cnt]

    gsub (".csv.ok","",tag[cnt]); 

# numero de campos, sem o nome do arquivo
    
    size[cnt] = NF + 1 

# prepara ultimo registro lido

    lock[cnt] = 0;

    line[cnt] = "";

# bypass headers also verify file exists

    eof = get_line_csv( $1 );

# new file

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

# do merge, balance line 

       for (k = 0; k < cnt; k++ ) {

            if (lock[k] == 0) {

# get a new line

                eof = get_line_csv(name[k]) 

                eline = $0

                }

            else {

# get last line

                $0 = line[k] 

                $1 = $1

                lock[k] = 0;

                }   


            check = $1;

            if ( check == "") {

                print "raw: EOF of " name[k]

                continue

                }

# get a valid (no header) line

            if (k == 0) {

            # o primeiro arquivo eh a referencia, nao pode ter fiducial repetido. 

                fiducial = $1;

                if (fiducial == "") exit

                tagh = ""

# determina o uuid e a data

                date_cmd | getline date; close (date_cmd);

                uuid_cmd | getline uuid; close (uuid_cmd);
        
                if (ndocs > 0) print "},"

                print " { ";

                print " \"uuid\" : \"" uuid "\",";    

                print " \"date\" : \"" date "\",";    
    
                print " \"fiducial\" : \"" fiducial "\",";
        
                }   

            if (tagh == "") {

                print "\"" tag[k] "\" : [ "

                tagh = "ok"

                }

            if (fiducial == check) {

                j = size[k] - 1

                print "\t{"

                for (i = 1; i < j; i++ ) {
        
                    gsub ("^\"","",$(i));

                    gsub ("\"$","",$(i));

                    print  "\t\"" fields[k][i] "\" : \"" $(i) "\","

                    }
            
                print "\t},"

# stay in this file until ge

                lock[k] = 0

                if (k > 0) k = k - 1;

                }

            else if (fiducial < check) {
            
                lock[k] = 1;

                line[k] = $0

                tagh = ""

                print "],"

                }

            else {

                print ">>> " name[k] " ERROR <<< " fiducial " ge " check

                # advance next record same file

                if (k > 0) k = k - 1

                }
            }


# close document: close (file);

        ndocs = ndocs + 1

# count and exit

        if (1 && (ndocs > 20) ) {

            eof = 0;

            }

        }

}
        

