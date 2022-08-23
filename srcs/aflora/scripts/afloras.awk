
function get_line_csv( file ) {

        getline < file;

        return $0;

}

BEGIN {

    FS = ",";

    RS = "\n";

    cnt = 0
}

{

    while (getline > 0) {

        print NF $0

        name[cnt] = $1

        size[cnt] = NF

        for (n = 0; n < NF; n++ ) {
            fields[cnt][n] = $(n+1);
            }

        cnt++;

        }

        print "EOL"

    for (key in name ) {

        print key "  >" name[key] "<  " size[key];

        m = size[key];

        for (n = 0; n < m; n++) {
            print n " --> " fields[key][n];
        }
    }        

} 


END {


    }
        
