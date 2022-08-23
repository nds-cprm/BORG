
function get_line_csv( file ) {

        getline < file;

        return $0;

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

    while (getline > 0) {

        name[cnt] = $1

        size[cnt] = NF

        for (n = 0; n < NF; n++ ) {
            
            gsub ("^\"","",$(n+1));

            gsub ("\"$","",$(n+1));

            fields[cnt][n] = $(n+1);
            }

        cnt++;

        }

#  document file: file = "id_aforamento.json"

#  print to document: > file


    for (key in name ) {

        date_cmd | getline date; close (date_cmd);

        uuid_cmd | getline uuid; close (uuid_cmd);

        print  name[key] ": { ";

        m = size[key];

        for (n = 0; n < m; n++) {
            
            print "\t\"" fields[key][n] "\" : \"" fields[key][n] "\", ";
            
            }

        print "\t\"uuid\" : \"" uuid "\"";    

        print "\t\"date\" : \"" date "\"";    

        print "\t }, ";

    }        

# close document: close (file);

} 


END {


    }
        
