    BEGIN { while ((getline < "file2.txt") > 0){ lines[$1]=$2 };OFS=":" }
#old file $1 and $2   so,look below, $i in lines ,so lines will
#provide the key ,rather than the value
    {
       if($1 in lines){#new file $1
           $2=lines[$1]; #new file $2
            print $0;
       }
    }  
# awk -F':' -f 3.awk 2 1
