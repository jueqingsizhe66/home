#!/usr/bin/awk -f
BEGIN{
    i=1;
   while((getline < "ux001.txt") > 0)
   {
       lines[i] = $0 ;
        i++; 
   }
   i=1;
   while((getline < "uy001.txt")> 0)
   {
      p[i] = $0;
      i++
  }
}
{
   print lines[NR]," ",p[NR]," ",$0  # NR  for 1 to end
    }

#awk -f neceend.awk uz001.awk
