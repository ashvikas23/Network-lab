echo "Enter three numbers:"
read a b c

small=$a
large=$a

if [ $b -lt $small ]; then small=$b; fi
if [ $c -lt $small ]; then small=$c; fi

if [ $b -gt $large ]; then large=$b; fi
if [ $c -gt $large ]; then large=$c; fi

echo "Smallest number is = $small"
echo "Largest number is = $large"
