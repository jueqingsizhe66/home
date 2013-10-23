#!/usr/bin/awk -f
BEGIN{
    FS=" "
    OFS=":";
    i=1;
   while((getline < "1") > 0)
   {
       lines[i] = $0 ;
        i++; 
   }
   i=1;
   while((getline < "2")> 0)
   {
      p[i] = $0;
      i++
  }
}
{
   print lines[NR]," ",p[NR]," ",$0  # NR  for 1 to end
    }
