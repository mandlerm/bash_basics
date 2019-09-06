counter=11
max=10

until [ $counter -gt $max ]
do
  echo $counter
  ((counter++))
done
