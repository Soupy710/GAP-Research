rm hyper.txt
touch hyper.txt
taskset -c 0,5 ./kernels/bfs -g 20 -n 1 | grep -E Generate\|Build\|Average >> hyper.txt
taskset -c 0,1 ./kernels/bfs -g 20 -n 1 | grep -E Generate\|Build\|Average >> hyper.txt
python3 hyperthread.py 
