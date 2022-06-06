echo "low"
read x
echo "up"
read y
range=$((y-x+1))
max=0
min=1000
RANDOM=$$
for i in `seq 5`
do
	r=$(($(($RANDOM%$range))+x))
	if [ $r -lt $min ]
	then
	min=$r
	fi
	if [ $r -gt $max ]
	then
	max=$r
	fi
echo "random : $r"
done
echo "min :$min"
echo "max :$max"
