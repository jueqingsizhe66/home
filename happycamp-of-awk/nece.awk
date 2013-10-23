#!/usr/bin/awk -f
BEGIN{
    FS=" "
    OFS=":";
   while((getline < "1") > 0)
       lines[NR] = $0 ;
    
#   while((getline < "uy001.txt") > 0)
#       l[FNR] = $0 ;
}
#    while((getline < "uz001.txt") > 0)
#       c[FNR] = $0 
#}
{
   print lines[NR],$0 
    }
