BEGIN {

    FS = "^";

	RS = "\r\n";

    n = 0;

	cmd = "uuid";
}

{
	if ( n == 0 ) {

		m = NF

		$0 = tolower ($0);

		split ($0, keys);

	    n = n + 1;

		print "[\n";

		"date" | getline current_time
 
		sub(/\n/,"", current_time);
		}

	else {

		cmd | getline uuid;

		sub(/\n/,"", uuid);

		if ( m != NF ) {

			printf " error: ";

			}

		print "{";

		print "\"uuid\" : \""uuid"\",";
 
		split ($0, values);

		k = 1;

		for (key in keys) {

			print "\""keys[k]"\" : \""values[k]"\","

			k++

			}

		print "},";

		}
 
	}

END {

	print "{ \"json_date\" : \"" current_time "\" },";

	print "{ \"EOF\" : \"EOF\" }\n";

	printf "]\n";

    }

