#Write a program (in your preferred language) that takes as input an unsorted list of student names and their CGPAs. 
#The program then prompts for the name of a student and should output his/her rank in the above list. 
#You can assume that no two students have the same CGPA. You are not allowed to sort the list.

#Constraint: Sorting of the input list is not allowed.

def rank(name, cgpa, r, n):
    flag = 0
    for i in range(n):
        max = 0
        for j in range(n):
            if (cgpa[j] > max): 
                max = cgpa[j]
                flag = j
        cgpa[flag] = -1
        if (name[flag] == r): break
    return (i+1)
            
num = int(input('Enter the number of students:'))

name = []
cgpa = []

for i in range(num):
    name.append(str(input()))
    cgpa.append(int(input()))

r = str(input("Enter the name of the student:"))

rank1 = rank(name, cgpa, r, num)

print("{}'s rank is {}.".format(r,rank1))


