
for file in `ls $1` ; do 

    echo "processando " $file

    cp $file ${file}.bck

    cat $file | \

    tr -d '\r' | \

    sed -e "s/[ ]{*}/ /g;" | \

    sed -e "/^[1234567890\.]* linhas selecionadas\./d"  > ${file}.ok

done
