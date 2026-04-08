echo Enter the coefficient of x^2:
read a
echo Enter the coefficient of x:
read b
echo Enter the constant term:
read c

f=`echo "-($b)" | bc`
p=`expr 2 \* $a`

if [ $a -ne 0 ]
then
d=`echo "$b * $b - 4 * $a * $c" | bc`

if [ $d -lt 0 ]
then
x=`echo "-($d)" | bc`
s=`echo "scale=2; sqrt( $x )" | bc -l`

echo The first root is:
echo "($f + $s i) / $p"
echo The second root is:
echo "($f - $s i) / $p"

elif [ $d -eq 0 ]
then
res=`echo "scale=2; $f / $p" | bc -l`
echo The root is: $res

else
s=`echo "scale=2; sqrt( $d )" | bc -l`
res1=`echo "scale=2; ( $f + $s ) / ( $p )" | bc -l`
res2=`echo "scale=2; ( $f - $s ) / ( $p )" | bc -l`

echo The first root is: $res1
echo The second root is: $res2
fi

else
echo Coefficient of x^2 cannot be 0.
fi
