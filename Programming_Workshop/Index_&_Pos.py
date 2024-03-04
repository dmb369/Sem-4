# Given a sorted array with distinct integers as elements

#Question 1
def binary_search(a, l, h):
    if (h>=l):
        m = int((l+h)/2)

        if (a[m]>m+1):
            return binary_search(a,l,m-1)
        elif (a[m]<m+1) :
            return binary_search(a,m+1,h)
        else:
            return m+1
    else:
        return False


n = int(input("Enter the number of integers: "))
array = []
print("Enter the sorted array:")

# Input the sorted array
for i in range (0,n):
    array.append(int(input()))

index = binary_search(array, 0, n-1)
if (index != False):
    print("The required index is:",index)
else:
    print('false')


#Question 2
#Given that A[1]>0
if array[0] == 1:
    print("The required index is: 1")
else:
    print('false')

