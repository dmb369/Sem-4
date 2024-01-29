#Program for the resource problem

n = int(input("Enter the number of individuals:"))

resources=[]
for i in range(n):
    resources[i]=int(input("Enter the amount",i,"th indivual has:\n"))

print(resources)