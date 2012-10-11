#!/usr/bin/env python

class Table:
	def __init__(self,expectedResults,illuminaResults,the454Results):

		print("")
		print("First: "+expectedResults)

		self.expectedResults=expectedResults
		self.illuminaResults=illuminaResults
		self.the454Results=the454Results

		self.illuminaKey="illumina+raymeta"
		self.the454Key="454+raymeta"

		self.debug=False

		self.run()

	def run(self):
		self.expectedObjects=[]

		if self.debug:
			print("ExpectedFile: "+self.expectedResults)
			print("Illumina: "+self.illuminaResults)
			print("454: "+self.the454Results)

		self.total=0
		for line in open(self.expectedResults):
			if line[0]=='#':
				continue

			entry={}

			tokens=line.split("\t")
			entry['count']=int(tokens[1])
			self.total+=entry['count']

			entry['name']=tokens[0]

			entry['keywords']=entry['name'].replace("("," ").replace(")"," ").split(" ")

			self.expectedObjects.append(entry)


		self.loadMetafile(self.illuminaKey,self.illuminaResults)
		self.loadMetafile(self.the454Key,self.the454Results)

		for entry in self.expectedObjects:
			entry['expected'] = (0.0+entry['count'])/self.total

		for entry in self.expectedObjects:

			self.display(entry)

	def display(self,entry):
		print ""
		print("Name: "+entry['name'])
		print("Expected: "+str(entry['expected']))

		if self.debug:
			print("Count: "+str(entry['count']))
			print("Keywords: ")
			print(entry['keywords'])
		
		if self.illuminaKey in entry:
			print("Illumina+RayMeta: "+str(entry[self.illuminaKey]))
			print(entry[self.illuminaKey+"-objects"])

		if self.the454Key in entry:
			print("454+RayMeta: "+str(entry[self.the454Key]))
			print(entry[self.the454Key+"-objects"])


	def loadMetafile(self,name,theFile):
		for line in open(theFile):
			self.load(name,line.strip())
	
	def load(self,name,dataFile):
		if dataFile.strip()=="":
			return

		for line in open(dataFile):
			tokens=line.split("\t")
			if tokens[0]=="File":
				continue

			theName=tokens[0]
			keywords=theName.replace("_"," ").split()
			value=float(tokens[1])
			self.classify(name,keywords,value,theName)

	def classify(self,name,keywords,value,theName):

		if self.debug:
			print("classify")
			print(keywords)

		index=0
		maximumScore=0
		bestIndex=0

		while index<len(self.expectedObjects):
			hits={}
			for word in keywords:
				hits[word]=1

			score=0
			for word in self.expectedObjects[index]['keywords']:
				if word in hits:
					score+=1

			if score>maximumScore:
				maximumScore=score
				bestIndex=index
		
			index+=1

		if maximumScore==0:
			return

		entry=self.expectedObjects[bestIndex]

		if name not in entry:
			entry[name]=0.0

		entry[name]+=value

		if self.debug:
			print(entry['name'])

		if name+"-objects" not in entry:
			entry[name+"-objects"]=[]

		entry[name+"-objects"].append(theName+"="+str(value))

even=Table("Even.Expected.txt","Even.Actual-Illumina.txt","Even.Actual-454.txt")

staggered=Table("Staggered.Expected.txt","Staggered.Actual-Illumina.txt","Staggered.Actual-454.txt")
