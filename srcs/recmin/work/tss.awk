BEGIN {

    table = "" 

}

{

# wipe end \n\r
#    gsub(/\n/,"",$0);
    gsub(/\r/,"",$0);

# skip empty lines
    if ($0 ~ /^$/) {
        }
# if table 
    else if ( $1 ~ /^rm_/ ) {
        print table
        table = $1
        }
# if field
    else {
        table = table "," $1 
    }

}
