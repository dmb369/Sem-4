n = int(input('Enter the number of individuals:'))
k = int(input('Enter the number of business types:'))
num = []
for i in range(n):
    num.append(int(input()))

keys = []

for i in range (k):
    count=0
    for j in range(n):
        if (num[j]==i+1):
            count+=1
    keys.append(count)

count = 0
for i in range (k):
    for j in range (k):
        if (((j+1)<=0.25*(i+1) + 0.2*k) or (((j+1)>0.75*k) and ((i+1)<0.9*k)) or ((j+1)>(i+1)+(k/3))):
            if (i==j):
                count += keys[i]*(keys[i]-1)
            else:
                count += keys[i]*keys[j]

print("The number of businesses conducted are: ", count)





