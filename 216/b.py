n = int(input())

people = set()
for i in range(n):
  people.add(input())

if n == len(people):
  print("No")
else:
  print("Yes")