#You are playing a game where unlocking each level requires clearing some previous levels. 
#You are given a two dimensional array Levels[][] where Levels[i] is a list of levels you need to clear to unlock level i, for i = 1 to n. 
#Write a program to output whether you can reach level n, and output the order in which the levels need to be cleared

def dfs(node, graph, visited, order):
    if visited[node] == 1:
        return False  
    if visited[node] == 2:
        return True   

    visited[node] = 1
    for next_level in graph[node]:
        if not dfs(next_level, graph, visited, order):
            return False

    visited[node] = 2
    order.append(node + 1)  
    return True

num = int(input("Enter the number of levels: "))
levels = []

for i in range(num):
    row = list(map(int, input(f"Enter the levels to unlock Level {i+1}: ").split()))
    levels.append(row)

n = len(levels)
graph = [[] for _ in range(n)]
for i, depend in enumerate(levels):
    for dep in depend:
        graph[dep - 1].append(i)  

visited = [0] * n
result = []
flag = 0

for i in range(n):
    if visited[i] == 0:
        if not dfs(i, graph, visited, result):
            print("You cannot reach the final level.")
            flag = -1

if flag == 0:
    print("Order:", result[::-1])
