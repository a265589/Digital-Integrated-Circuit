# 






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

def process_cal_file(input_file, output_file):
    """
    Read `cal.txt`, modify the content by adding buffer stages, 
    and write the modified content back to `cal.txt`.
    """
    with open(input_file, 'r') as infile:
        lines = infile.readlines()

    modified_lines = []

    for line in lines:
        parts = line.strip().split()
        if len(parts) == 4 and parts[0].startswith("XI"):
            # Extract original values
            xi, input_signal, output_signal, gate_type = parts
            
            # Generate buffer signals
            buffer_signal = output_signal.replace("_inv", "_buf")
            
            # Add the new lines
            modified_lines.append(f"{xi} {input_signal} {buffer_signal} {gate_type}\n")
            modified_lines.append(f"XB{xi[2:]} {buffer_signal} {output_signal} Buffer\n")
        else:
            # Keep other lines unchanged
            modified_lines.append(line)

    with open(output_file, 'w') as outfile:
        outfile.writelines(modified_lines)

# Specify the file name
input_file = "cal.txt"
output_file = "cal.txt"

# Execute the function
process_cal_file(input_file, output_file)
