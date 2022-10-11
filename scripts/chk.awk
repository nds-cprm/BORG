#
# verifica intervalos descontinuos em arquivos ordenados por fiducial no 1o campo
# 09/2022
# alvaro barcellos, cprm
#

BEGIN {

    FS = ",";

    RS = "\n";

    cnt = 1;

}

{

            gsub ("^\"","",$1);

            gsub ("\"$","",$1);

            if ( $1 < cnt ) {

                print " over " $1 " ? " cnt

                }

            if ($1 > (cnt+1) ) {

                print " lag " cnt " tag " $1 " lost " $1 - cnt - 1

                }

            cnt = $1
}

        

