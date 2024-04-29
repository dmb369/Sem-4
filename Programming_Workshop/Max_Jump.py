#You are given an integer array nums. 
#You are initially positioned at the array's first index.
#and each element in the array represents your maximum jump length at that position.
#Return true if you can reach the last index, or false otherwise.

l = list(map(int, input().split()))
n = len(l)

jump = 0
i = 0
flag = 0

while(i<=n):
    if (l[i]==0):
        print('false')
        flag = -1
        break
    jump += l[i]
    i = jump
    

if (jump-l[n-1]+1==n): print('true')
if (flag==0 and jump-l[n-1]+1!=n): print('false') 
