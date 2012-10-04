

actual={}

for a in open('Results/100.grouped.txt'):
	b=a.split()
	actual[b[0]]=b[1].strip()

for a in open('Expected-Proportion.txt'):
	b=a.split()
	key=b[0]

	result=0

	if key in actual:
		result=actual[key]

	print key+"	"+b[1].strip()+"	"+str(result)

