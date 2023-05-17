
for file in `ls $1` ; do 

    echo "processando " $file

#    cp $file ${file}.bck

    cat $file | \

    tr -d '\r' | \

    sed -e "s/[ ]{*}/ /g;" | \
    
    sed -e " \
    s/Ã/(1)/g; \
    s/Ã/Ó/g; \
    s/Ã/É/g; \
    s/Ã/É/g; \
    s/Ã/Ç/g; \
    s/Ã/Á/g; \
    s/Ã/Ã/g; \
    s/Â°/ numero /g; \
    s/Ã/ a cerca de /g; \
    s/â/ - /g; \
    s/Ã/À/g; \
    s/Ã/Â/g; \
    s/Ã/Ô/g; \
    s/Ã/Õ/g; \
    s/Ã/Ú/g; \
    s/Ã/Ê/g; \
    s/Ã/á/g; \
    s/Ã/ã/g; \
    s/Ã/â/g; \
    s/Ã€/Á/g; \
    s/Ã¾/ç/g; \
    s/Ã¼/ü/g; \
    s/aÃ±/ãn/g; \
    s/Ã§/ç/g; s/Ã¡/á/g; s/Ã©/é/g; s/Ã­/í/g; s/Ã³/ó/g; s/Ãº/ú/g; \
    s/Ã¢/â/g; s/Ãª/ê/g; s/Ã´/ô/g; s/Ã£/ã/g; s/Ãµ/õ/g; \
    s/Ã?/Í/g; s/hÃ/há/g; \
    " | \

    sed -e "/^[1234567890\.]* linhas selecionadas\./d"  > ${file}.ok

done
