#!/usr/bin/awk -f
function dec2bin(n){
  for(i=0;i < 4; i++){
    printf("%c", n % 256);
    n = int(n / 256);
  }
}
{ dec2bin($1); dec2bin($2);}
