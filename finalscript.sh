rm output_script.txt
touch output_script.txt
taskset -c 2 ./kernels/bfs -g 20 -n 1 | grep -E Generate\|Build\|Average >> output_script.txt
taskset -c 2-3 ./kernels/bfs -g 20 -n 1 | grep -E Generate\|Build\|Average >> output_script.txt
taskset -c 2-5 ./kernels/bfs -g 20 -n 1 | grep -E Generate\|Build\|Average >> output_script.txt
taskset -c 2-9 ./kernels/bfs -g 20 -n 1 | grep -E Generate\|Build\|Average >> output_script.txt
taskset -c 2-17 ./kernels/bfs -g 20 -n 1 | grep -E Generate\|Build\|Average >> output_script.txt
taskset -c 2-32 ./kernels/bfs -g 20 -n 1 | grep -E Generate\|Build\|Average >> output_script.txt

