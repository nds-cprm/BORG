
head -1 `ls $1` | tr [:upper:] [:lower:] | \
    sed -e '{:q; N; s/ <==\n/","/g;t q}' | \
    sed -e 's/==> /"/; s/,/","/g; s/""/"/g; s/$/"/; s/\r//; s/,""/,"/; s/"",/",/; s/""$/"/; /^"$/d ' | \
    sed -e 's/cod_aflo/id_aflo/g' > heads
sort -t',' -k 2 < heads > headss
