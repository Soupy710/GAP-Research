import matplotlib.pyplot as plt
file1 = open('output_script.txt', 'r')
Lines = file1.readlines()
Generate = []
Build = []
Average = []
Core_Scale = [1,2,4,8,16,32]

print(Lines)
for i in range(0,len(Lines),3):
	temp = Lines[i].replace('Generate Time: ','').replace(' ','').replace('\n','')
	Generate.append(float(temp))
	temp = Lines[i+1].replace('Build Time: ','').replace(' ','').replace('\n','')
	Build.append(float(temp))
	temp = Lines[i+2].replace('Average Time: ','').replace(' ','').replace('\n','')
	Average.append(float(temp))
print(Generate)
print(Average)
print(Build)
plt.plot(Core_Scale[0:4], Generate)
plt.legend(['Generate Time'])
plt.xlabel('Number of cores')
plt.ylabel('Time(in sec)')
plt.show()
plt.plot(Core_Scale[0:4], Average)
plt.legend(['Build Time'])
plt.xlabel('Number of cores')
plt.ylabel('Time(in sec)')
plt.show()
plt.plot(Core_Scale[0:4], Build)
plt.legend(['Average Time'])
plt.xlabel('Number of cores')
plt.ylabel('Time(in sec)')
plt.show()
