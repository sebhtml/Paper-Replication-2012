

keys=[]
pairs=[]

total=396000000/2

for i in open('1.100'):
	keys.append(i.strip())

for i in open('Pairs.txt'):
	pairs.append(int(i))

i=0

while i<len(keys):
	proportion=(0.0+pairs[i])/total

	print keys[i]+"	"+str(proportion)

	i+=1
