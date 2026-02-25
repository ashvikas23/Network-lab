echo "enter a number:"
read n
r=$(echo "$n" | rev)
if [ "$n" = "$r" ]
then
echo "the number is palindrome"
else
echo "the number is not palindrome"
fi
