

actual={}

for a in open('Actual-Proportions.txt'):
	b=a.split()

	if b[0]=="File":
		continue

	key=b[0]
	value=float(b[1].strip())

	if key not in actual:
		actual[key]=0

	actual[key]+=value

for a in open('Expected-Proportions.txt'):
	b=a.split()
	key=b[0]

	result=0

	if key in actual:
		result=actual[key]

	print key+"	"+b[1].strip()+"	"+str(result)

