

BEGIN {

    FS = ",";

    RS = "\n";

    cnt = 0;

    ndocs = 0;

    date_cmd = "date --iso-8601=seconds " ;

    uuid_cmd = "uuid -v 1 -m ";

    file = "toponimia.csv.ok";

    file = "textura_rocha_sedimentar.csv.ok";

    k = 0
}

{


#    eof = getline < file

    print "(" $0 ")"

    line[k] = $0

    $0 = line[k]

    print "[" $0 "]"


# clean quotes, at start and final of each field

        for (n = 1; n <= NF; n++ ) {

            gsub ("^\"","",$(n));

            gsub ("\"$","",$(n));

            print n " (" $(n) ") "

            }

    k = (k + 1)%8
}

        

