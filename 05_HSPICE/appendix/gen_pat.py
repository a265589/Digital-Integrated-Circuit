def decimal_to_binary_4bits(decimal_list):
    binary_list = [format(num, '04b') for num in decimal_list]
    return binary_list

file_path = 'pattern.txt'

with open(file_path, 'r') as file:
    lines = file.readlines()

binary_lines = []
for line in lines:
    decimal_numbers = [int(num) for num in line.split()]
    binary_numbers = decimal_to_binary_4bits(decimal_numbers)
    binary_lines.append(' '.join(binary_numbers))

# 將輸出寫入 value_lists.txt 檔案
with open("value_lists.txt", "w") as file:
    for binary_line in binary_lines:
        file.write(binary_line + '\n')





# file_path = "pattern.txt"  # 替換成你的文件路徑

# with open(file_path, "r") as file:
#     data = file.read()

# lines = data.split('\n')

# value_lists = [[] for _ in range(len(lines[1].split(':')[1].split(',')))]

# for line in lines:

#     if(line.split(':')[0] == "weight" or line.split(':')[0] == "OUT"):
#         print("testtest")
#         if(line.split(':')[0] == "weight"):
#             weight_value = []
#             tmp_value = line.split(':')[1].split(',')
#             for i, val in enumerate(tmp_value):
#                 weight_value.append(int(val.strip()))
#         continue
#     values = line.split(':')[1].split(',')
#     for i, val in enumerate(values):
#         # print(i)
#         value_lists[i].append(int(val.strip()))

# # for i, values in enumerate(value_lists, start=1):
# #     print(f"List{i}: {values}")
# #write value_lists and weight_value to file 
# with open("value_lists.txt", "w") as file:
#     file.write(' '.join(str(x) for x in weight_value)+'\n')
#     for i, values in enumerate(value_lists):
#         print(len(values))
#         file.write(' '.join(str(x) for x in values)+'\n')

#     # file.write(f"weight: {weight_value}\n")