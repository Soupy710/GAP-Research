i=0
while [ $i -ne 40000 ]
do
        i=$(($i+1))
        sudo taskset -pc 0,1 $i
done
