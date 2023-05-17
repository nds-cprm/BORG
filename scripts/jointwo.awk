#
#   script para incluir a chave de sincronização em arquivos csv
#   usando dois arquivos:
#       indice, composto por: chave principal, chave secundaria
#       campos, composto por: chave secundaria, campos diversos
#
#   agsb@cprm 04/2023
#
#

#
# get a line from a named file
# preserve $0 and wipe " from $1...$n
#
function get_line_csv( file ) {

        eof = getline < file

        if (eof <= 0) {

            print "#--- error ----" $file

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

    nlines = 0;

    date_cmd = "date --iso-8601=seconds " ;

    uuid_cmd = "uuid -v 1 -m ";

    print "# " ARGV[1]

    print "# " ARGV[2]

}

{
# joint merge at end
}

#
# loop of files
#
END {

# full merge balance line

    eof = 1;

    n_1 = 0;

    n_2 = 0;

    while ( eof ) {

    if ( n_1 == 0) {

        eof = getline < ARGV[1];

        if (eof <= 0) {
            
            continue;

            print "#--- error 1 --- " ARGV[1];

            }

#        for (n = 1; n <= NF; n++ ) {
#            print $(n)
#            }

        line_1 = $(0);
        fidc_1 = $(1);
        cont_1 = $(2);

        }

    if ( n_2 == 0) {

        eof = getline < ARGV[2]

        if (eof <= 0) {

            continue;

            print "#--- error 2 --- " ARGV[2];

            }

#        for (n = 1; n <= NF; n++ ) {
#            print $(n)
#            }

        line_2 = $(0);
        cont_2 = $(1);

        }

    # print "# for " fidc_1 " join " cont_1 " with " cont_2 

    if ( cont_1 == cont_2 ) {

        n_1 = 0;
        n_2 = 0;

        print line_1 ", " line_2;

        nlines = nlines + 1;

        }

    if ( cont_1 < cont_2 ) {

#        print "# miss " cont_1 " < to " cont_2

        n_1 = 0;
        n_2 = 1;

        }   

    if ( cont_1 > cont_2 ) {

#        print "# miss " cont_1 " > to " cont_2

        n_1 = 1;
        n_0 = 0;

        }

    }

} 



