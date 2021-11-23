rm hyper.txt
touch hyper.txt
taskset -c 15,31 ./kernels/bfs -g 20 -n 1 | grep -E Generate\|Build\|Average >> hyper.txt
taskset -c 29,30 ./kernels/bfs -g 20 -n 1 | grep -E Generate\|Build\|Average >> hyper.txt
python3 hyperthread.py 
