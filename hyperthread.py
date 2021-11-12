import matplotlib.pyplot as plt
file1 = open('hyper.txt', 'r')
Lines = file1.readlines()
Generate = []
Build = []
Average = []
Core_Scale = [1,2,3,4,5,6,7,8]

print(Lines)
for i in range(0,len(Lines),3):
	if i==0:
		print('With Hyperthreading: ')
	if i==3:
		print('Generation Time: ',Generate[0])
		print('Build Time: ',Build[0])
		print('Execution Time: ',Average[0])
		print()
		print('Without Hyperthreading: ')
	temp = Lines[i].replace('Generate Time: ','').replace(' ','').replace('\n','')
	Generate.append(float(temp))
	temp = Lines[i+1].replace('Build Time: ','').replace(' ','').replace('\n','')
	Build.append(float(temp))
	temp = Lines[i+2].replace('Average Time: ','').replace(' ','').replace('\n','')
	Average.append(float(temp))

print('Generation Time: ',Generate[1])
print('Build Time: ',Build[1])
print('Execution Time: ',Average[1])

