#Switching Banks Problem
a = 10000000
year = [2024, 2025, 2026, 2027]
int = [[0.0625, 0.065], [0.07, 0.067], [0.0725, 0.075], [0.08, 0.0775]]
pen = [[0.01, 0.02], [0.015, 0.008], [0.0125, 0.025], [0.022, 0.0185]]
banks = ["HFDC", "CICIC"]
returns = [[0,0], [0,0], [0,0], [0,0], [0,0]]

# Starting from end 
returns[4][0] = a
returns[4][1] = a
dp = [0,0,0,0]

for i in range(3, -1, -1):
    for j in range(2):
        l0 = (1 + int[i][j]) * returns[i + 1][0]
        l1 = (1 - pen[i][j]) * (1 + int[i][1 - j]) * returns[i + 1][0]

        if l0 > l1:
            returns[i][j] = l0
            if j == 0:
                dp[3 - i] = banks[0] 
            else:
                dp[3 - i] = banks[1]
        else:
            returns[i][j] = l1
            if j == 0:
                dp[3 - i] = banks[0] 
            else: 
                dp[3 - i] = banks[1]

print(f"Maximum returns: {max(returns[0][0], returns[0][1])}")
    
for i in range(4):
    print(f'Year:',year[i],':',dp[i])




