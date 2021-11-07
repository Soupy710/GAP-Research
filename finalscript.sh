rm output_script.txt
touch output_script.txt
taskset -c 0 ./kernels/bfs -g 20 -n 1 | grep -E Generate\|Build\|Average >> output_script.txt
taskset -c 0-1 ./kernels/bfs -g 20 -n 1 | grep -E Generate\|Build\|Average >> output_script.txt
taskset -c 0-3 ./kernels/bfs -g 20 -n 1 | grep -E Generate\|Build\|Average >> output_script.txt
taskset -c 0-7 ./kernels/bfs -g 20 -n 1 | grep -E Generate\|Build\|Average >> output_script.txt
python3 plot_graph.py 

