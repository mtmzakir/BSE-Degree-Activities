list = []
for x in range(100):
    marks = input('Enter a mark, 0 to 100: ')

    if marks.isnumeric():
        marks = int(marks)
        if marks < 0:
            print('Marks must be positive!')
        elif marks > 100:
            print('Marks must be Less than 100!')
        elif marks == 0:
            break
        list.append(marks)
    else:
        print('That\'s not a valid mark!')

sum = 0
for x in list:
    sum += x

avg = 0
for x in list:
    avg = sum / len(list)

max_value = 0
for x in list:
    max_value = max(list)

min_value = 0
for x in list:
    min_value = min(list)

print('Total Marks: ', sum)
print('Average Marks: ', avg)
print('Highest Marks: ', max_value)
print('Lowest Marks: ', min_value)