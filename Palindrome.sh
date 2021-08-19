echo "Enter the number"
read num
uperlimit=9999
lowerlimit=1000
if [[ $num -gt $lowerlimit && $num -lt $uperlimit ]]
then
echo "Number is Valid"
s=0


rev=""

temp=$num

while [ $num -gt 0 ]
do
    
    s=$(( $num % 10 ))

    
    num=$(( $num / 10 ))

    
    rev=$( echo ${rev}${s} )
done

if [ $temp -eq $rev ];
then
    echo "Number is palindrome"
else
    echo "Number is NOT palindrome"
fi

else
    echo "Number is Invalid"
fi   

