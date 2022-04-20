BEGIN {

    FS="^";

    n = 0;

}

{
	if ( n == 0 ) {

		k = NF

	    n = n + 1;

		}

	else {

		p = NF

		if ( p != k ) {

			print "* " p " x " k "< " $0 "> \n"

			k++


			}

		}
 
	}

END {

    }

