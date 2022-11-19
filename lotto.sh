echo -n "Hvormange rækker vil du printe? " 
read max
min=01
while [ $max -ge $min ]; do
  echo -n "Række   $min   "  
  shuf -i 01-36 -n07 | xargs -n7 
  min=$[$min +1]
done
