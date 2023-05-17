
function get_line_csv( file ) {

        eof = getline line < file

        $0 = line;
        
        $1 = $1

        if (eof <= 0) {

            print "--- error ----" $file

            }

# clean quotes

        for (n = 1; n <= NF; n++ ) {

            gsub ("^\"","",$(n));

            gsub ("\"$","",$(n));

            }

        return eof;

}


BEGIN {

    FS = ",";

    RS = "\n";

    cnt = 0;

    ndocs = 0;

    date_cmd = "date --iso-8601=seconds " ;

    uuid_cmd = "uuid -v 1 -m ";

}

{

# determina a sequencia de arquivos para o documento
    
    cnt = 0;

    while (getline > 0) {

# clean quotes

        for (n = 1; n <= NF; n++ ) {

            gsub ("^\"","",$(n));

            gsub ("\"$","",$(n));

            }


#    print "file : " $1 " fields : " NF

# nome dos campos

        for (n = 2; n <= NF; n++ ) {

            fields[cnt][n-1] = $(n);
    
#    print "field : " $(n) " saved : " fields[cnt][n-1] 

            }

# nome do arquivo

        name[cnt] = $1

# numero de campos
    
        size[cnt] = NF

# ultimo lido

        lock[cnt] = 0;

# novo arquivo

        cnt++;

        }

} 

END {

# full merge balance line

# todos os arquivos devem ter na 1 coluna a chave principal e estarem ordenados

# busca o conteudo de cada arquivo na ordem especificada pelo arquivo de headers

# document file: file = "id_aforamento.json"

    ndocs = 0

    eof = 1;

    while ( eof ) {

# o primeiro arquivo eh a referencia, nao pode ter fiducial repetido. 

        eof = get_line_csv(name[0]) 

        print ">>>" $0

# pass headers

        if ( ndocs > 0 ) {

            fiducial = $1;
        
# determina o uuid e a data

            date_cmd | getline date; close (date_cmd);

            uuid_cmd | getline uuid; close (uuid_cmd);
            
            print "\"uuid\" : \"" uuid "\",";    

            }

# balance line dos outros aquivos

        for (k = 1; k < cnt; k++ ) {

            if ( ndocs < 1 ) {

                continue

                }

# check balance

            eof = get_line_csv(name[k]) 

            
            print " it : " k " new line " $0

            }


# close document: close (file);

        ndocs = ndocs + 1

        if (ndocs > 10) {

            eof = 0;

            }

        }

}
        

