head -n 1 < $1 > $1.x
sed -e '1d; /^$/d; /^[1234567890\.] linhas selecionadas./d' < $1 > $1.y
sort -n < $1.y > $1.z
cat $1.x $1.z > $2

