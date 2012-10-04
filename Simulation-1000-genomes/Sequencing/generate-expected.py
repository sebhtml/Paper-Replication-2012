

keys=[]
pairs=[]

total=3000000000*0.99/2

for i in open('List.1000'):
	keys.append(i.strip())

for i in open('Pairs.txt'):
	pairs.append(int(i))

i=0

while i<len(keys):
	proportion=(0.0+pairs[i])/total

	print keys[i]+"	"+str(proportion)

	i+=1
