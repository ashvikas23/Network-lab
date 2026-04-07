echo "Enter a number: "
read num
temp=$num
sum=0

while [ $num -gt 0 ]
do
  r=$((num % 10))
  sum=$((sum + r*r*r))
  num=$((num / 10))
done

if [ $sum -eq $temp ]
then
  echo "Armstrong number"
else
  echo "Not an Armstrong number"
fi
