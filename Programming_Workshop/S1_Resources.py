#Program for the resource problem

n = int(input("Enter the number of individuals:"))

resources=[]

for i in range(0,n):
    l=int(input())
    resources.append(l)

extra = int(input("Enter the amount of extra resources:"))
m=max(resources)
result=[]

for i in range(0,n):
    k=resources[i]+extra
    if (k>=m):
        result.append(True)
    else:
        result.append(False)

print(result)