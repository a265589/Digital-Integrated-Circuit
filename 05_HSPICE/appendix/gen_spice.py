# # Python script to update the qb field in the given entries

# def update_cim_entries(input_file, output_file):
#     with open(input_file, 'r') as file:
#         lines = file.readlines()

#     updated_lines = []
#     for line in lines:
#         parts = line.split()
#         if len(parts) >= 8:  # Ensure the line has the expected structure
#             # Extract the W_* identifier
#             w_identifier = parts[6]
#             # Modify qb to W_*_bar
#             parts[7] = f"{w_identifier}_bar"
#             # Reconstruct the line
#             updated_lines.append(" ".join(parts))

#     # Write the updated lines to the output file
#     with open(output_file, 'w') as file:
#         file.write("\n".join(updated_lines))

# # Example usage
# input_file = "cim_cell_connections.txt"  # Replace with your input file
# output_file = "updated_cim_entries.txt"  # Replace with your output file
# update_cim_entries(input_file, output_file)


# Python script to update WL field based on row and bit

# def update_wl_entries(input_file, output_file):
#     with open(input_file, 'r') as file:
#         lines = file.readlines()

#     updated_lines = []
#     for line in lines:
#         parts = line.split()
#         if len(parts) >= 8:  # Ensure the line has the expected structure
#             # Extract the row and bit information from the I_* identifier
#             i_identifier = parts[1]  # The second field is I_*
#             i_parts = i_identifier.split('_')
#             row = i_parts[1]  # Extract the row number
#             bit = i_parts[3]  # Extract the bit number

#             # Update the WL field with WL_row_bit
#             wl_name = f"WL_{row}_{bit}"
#             parts[3] = wl_name  # Update the WL field

#             # Reconstruct the line
#             updated_lines.append(" ".join(parts))

#     # Write the updated lines to the output file
#     with open(output_file, 'w') as file:
#         file.write("\n".join(updated_lines))

# # Example usage
# input_file = "updated_cim_entries.txt"  # Replace with your input file
# output_file = "final_cim_entries.txt"  # Replace with your output file
# update_wl_entries(input_file, output_file)

# Python script to generate preweight.txt file based on CIM cell entries

# def generate_preweight_file(input_file, output_file):
#     with open(input_file, 'r') as file:
#         lines = file.readlines()

#     preweight_lines = []
#     toggle = 0  # Toggle between 0 and 1 for each weight initialization

#     for line in lines:
#         parts = line.split()
#         if len(parts) >= 8:  # Ensure line has enough parts
#             weight = parts[6]  # Extract weight identifier (e.g., W_1_1_1)
#             weight_bar = parts[7]  # Extract weight bar identifier (e.g., W_1_1_1_bar)

#             # Alternate the initialization values for weights
#             value = toggle
#             value_bar = 1 - toggle

#             preweight_lines.append(f".IC V({weight}) = {value} V({weight_bar}) = {value_bar}")

#             # Toggle for next weight
#             toggle = 1 - toggle

#     # Write to output file
#     with open(output_file, 'w') as file:
#         file.write("\n".join(preweight_lines))

# # Example usage
# input_file = "final_cim_entries.txt"  # Replace with your input file
# output_file = "preweight.txt"  # Replace with your output file
# generate_preweight_file(input_file, output_file)


# # Python script to extract I and WL identifiers and generate inputnet.txt

# def extract_inputnet(input_file, output_file):
#     with open(input_file, 'r') as file:
#         lines = file.readlines()

#     I_identifiers = []
#     WL_identifiers = []

#     for line in lines:
#         parts = line.split()
#         if len(parts) >= 8:  # Ensure the line has enough parts
#             I_identifiers.append(parts[1])  # Extract I identifier (e.g., I_1_1_1)
#             WL_identifiers.append(parts[3])  # Extract WL identifier (e.g., WL_1_1)

#     # Remove duplicates while maintaining order
#     WL_identifiers = list(dict.fromkeys(WL_identifiers))

#     # Write to output file
#     with open(output_file, 'w') as file:
#         file.write(" ".join(I_identifiers) + "\n")
#         file.write(" ".join(WL_identifiers) + "\n")

# # Example usage
# input_file = "final_cim_entries.txt"  # Replace with your input file
# output_file = "inputnet.txt"  # Replace with your output file
# extract_inputnet(input_file, output_file)

# Python script to count items starting with I and W and generate output

# def count_items(input_file, output_file):
#     with open(input_file, 'r') as file:
#         lines = file.readlines()

    

#     # Total number of items
#     total_count = 528

#     # Generate the output content
#     output_lines = ["i " * total_count, "1 " * total_count]

#     # Write the output to the file
#     with open(output_file, 'w') as file:
#         file.write("\n".join(output_lines) + "\n")

# # Example usage
# input_file = "inputnet.txt"  # Replace with your input file
# output_file = "output.txt"  # Replace with your output file
# count_items(input_file, output_file)

# import random

# # Generate 20 lines of 528 random numbers (0 or 1)
# kk = 20
# output_file = "out.txt"

# with open(output_file, "w") as file:
#     for _ in range(kk):
#         random_numbers = [str(random.randint(0, 1)) for _ in range(528)]
#         file.write(" ".join(random_numbers) + "\n")


# # Open and read the file
# with open("length.txt", "r") as file:
#     content = file.read()

# # Strip extra spaces and handle newlines if needed
# content = content.strip()

# # Calculate the length of the string
# length = len(content)

# # Output the result
# print(f"The length of the string is: {length}")

# with open("length.txt", "r") as file:
#     content = file.readlines()

# # Function to transform I_x_x_x to Ixxyy format
# def transform_identifier(identifier):
#     if identifier.startswith("I_"):
#         parts = identifier.split("_")
#         if len(parts) == 4:  # Ensure the identifier has the expected format
#             return f"I{parts[1]}{parts[2]}{parts[3]}"
#     return identifier  # Return as-is if it doesn't match the format

# # Process each line and replace identifiers
# updated_content = []
# for line in content:
#     words = line.split()
#     updated_line = [transform_identifier(word) for word in words]
#     updated_content.append(" ".join(updated_line))

# # Write the updated content to the output file
# with open("LENG.txt", "w") as output_file:
#     output_file.write("\n".join(updated_content))

# Read the content of LENG.txt
# 定義文件名
# input_file = "length.txt"

# # 計算1的數量
# count = 0
# with open(input_file, "r") as file:
#     for line in file:
#         # 將每一行分割成單詞，計算'1'的數量
#         count += line.split().count("1")

# # 輸出結果
# print(f" '1' : {count}")
# input_file = "mul.vec"
# output_file = "mul.vec"

# with open(input_file, "r") as infile:
#     lines = infile.readlines()

# # 處理每一行
# with open(output_file, "w") as outfile:
#     for line in lines:
#         if line.strip().startswith("Radix"):
#             # 移除 Radix 部分的空格
#             modified_line = line.replace(" ", "")
#             outfile.write(modified_line)
#         else:
#             # 保持其他內容不變
#             outfile.write(line)
# output_file = "WL_pattern.txt"

# # Generate 20 groups of 16 WL values based on the specified rules
# with open(output_file, "w") as file:
#     for group in range(20):
#         pattern = []
#         for i in range(16):
#             if i % 4 == 0 or i % 4 == 1:  # WL_1_1, WL_2_1, WL_3_1, WL_4_1 and WL_1_2, WL_2_2, WL_3_2, WL_4_2
#                 pattern.append("1")
#             else:
#                 pattern.append("0")
#         file.write(" ".join(pattern) + "\n")
# with open("LENG.txt", "r") as leng_file:
#     leng_lines = leng_file.readlines()

# with open("WL_pattern.txt", "r") as wl_file:
#     wl_lines = wl_file.readlines()

# # 確保 LENG.txt 有 20 行，WL_pattern.txt 每行有 16 個值
# if len(leng_lines) != 20 or not all(len(wl_line.split()) == 16 for wl_line in wl_lines):
#     raise ValueError("LENG.txt 必須有 20 行，且 WL_pattern.txt 每行必須有 16 個數字！")

# # 替換 LENG.txt 每行的最後 16 個 0 或 1
# updated_lines = []
# for i in range(20):
#     # 取得 LENG.txt 當前行，並去掉最後 16 個數字
#     leng_line = leng_lines[i].strip().rsplit(" ", 16)[0]
#     # 加上 WL_pattern.txt 的對應行
#     updated_line = leng_line + " " + wl_lines[i].strip()
#     updated_lines.append(updated_line)

# # 將更新後的內容寫回 LENG.txt
# with open("LENG.txt", "w") as leng_file:
#     leng_file.write("\n".join(updated_lines) + "\n")


# def process_pro_txt(input_file, output_file):
#     with open(input_file, 'r') as infile:
#         lines = infile.readlines()
    
#     new_lines = []
    
#     for line in lines:
#         # 分割行為元素
#         parts = line.strip().split()
#         if len(parts) < 9:
#             continue

#         # 提取原始元素
#         x_prefix = parts[0]  # X1, X2, ...
#         input_signal = parts[1]  # I111, I112, ...
#         output_signal = parts[2]  # O_1_1_1, O_1_1_2, ...
#         wl = parts[3]  # WL_1_1, WL_1_2, ...
#         bl = parts[4]  # BL
#         blb = parts[5]  # BLB
#         w_prefix = parts[6]  # W_1_1_1
#         w_bar_prefix = parts[7]  # W_1_1_1_bar

#         # 解析 X 和 O 的信息
#         x_index = int(x_prefix[1:])  # 提取數字部分
#         o_parts = output_signal.split("_")

#         # 生成新的行
#         for i in range(1, 5):  # 循環生成 _1, _2, _3, _4
#             new_x = f"{x_index}{i}"  # 更新 X 編號
#             new_output_signal = f"{'_'.join(o_parts)}_{i}"  # 更新 O 編號
#             new_w = f"{w_prefix[:-1]}{i}"  # 更新 W
#             new_w_bar = f"{w_bar_prefix[:-5]}{i}_bar"  # 正確更新 W_bar
#             new_line = f"X{new_x} {input_signal} {new_output_signal} {wl} {bl} {blb} {new_w} {new_w_bar} CIM_cell"
#             new_lines.append(new_line)
    
#     # 寫入輸出文件
#     with open(output_file, 'w') as outfile:
#         outfile.write("\n".join(new_lines) + "\n")


# # 指定輸入和輸出文件
# input_file = "pro.txt"
# def process_file(input_file):
#     updated_lines = []

#     with open(input_file, 'r') as infile:
#         lines = infile.readlines()

#     with open(input_file, 'w') as outfile:
#         for line in lines:
#             # 移除多餘的空格並增加 "0 0 0" 到行的前面
#             line = line.strip()
#             original_line = f"1 1 1 {line}\n"
#             modified_line = f"0 1 1 {line}\n"  # 第一個 0 改為 1
            
#             # 原行和修改行都加入結果
#             updated_lines.append(original_line)
#             updated_lines.append(modified_line)

#         # 寫回處理後的內容
#         outfile.writelines(updated_lines)

# # 指定檔案名稱
# file_name = "fixori.txt"

# # 執行函式
# process_file(file_name)

def modify_inv(input_file, output_file):
    with open(input_file, 'r') as infile:
        lines = infile.readlines()

    with open(output_file, 'w') as outfile:
        for index, line in enumerate(lines):
            # 解析每行的內容，提取所需的數據
            parts = line.split()
            if len(parts) > 2:  # 確保行格式正確
                input_name = parts[1]  # I_x_x_x_inv
                new_name = input_name.replace('_inv', '')
                xi_name = f"XI{index + 11}"  # XI開頭的名字遞增
                outfile.write(f"{xi_name} {new_name} {input_name} INV\n")

# 指定輸入與輸出檔案
input_file = "ori.txt"
output_file = "orii.txt"

# 執行
modify_inv(input_file, output_file)
















