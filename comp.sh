# Read strings from files
s1=$(<file1.txt)
s2=$(<file2.txt)

# Get the maximum length
len=${#s1}
if [ ${#s2} -gt $len ]; then len=${#s2}; fi

# Compare character by character
for ((i=0; i<$len; i++)); do
  c1="${s1:i:1}"
  c2="${s2:i:1}"
  if [ "$c1" != "$c2" ]; then
    echo "Position $i: '$c1' vs '$c2'"
  fi
done