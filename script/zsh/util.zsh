print-time(){
  echo "obase=16; $(date +%s)" | bc | tr '[A-Z]' '[a-z]'
}



