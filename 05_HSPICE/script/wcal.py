# # Read from 1.txt, process each row, and write back to 1.txt
# with open("1.txt", "r") as file:
#     lines = file.readlines()

# # Open the file again for writing
# with open("1.txt", "w") as file:
#     for line in lines:
#         # Split the line into a list of 0s and 1s, strip any trailing whitespace
#         numbers = line.strip().split()
        
#         # Extract 128 numbers starting from the 4th index (index 3 in zero-based counting)
#         processed = numbers[3:3+128]
        
#         # Join the processed numbers and write to the file
#         file.write(" ".join(processed) + "\n")
# Open the file to read the binary rows

# Generate 2.txt with alternating rows of 128 "1"s and 128 "i"s
# Read the content of 2.txt, process it, and overwrite it
# try:
#     # Read the content of 2.txt
#     with open("2.txt", "r") as file:
#         lines = file.readlines()

#     # Process each line: keep only the first 147 elements
#     processed_lines = [" ".join(line.strip().split()[:147]) for line in lines]

#     # Write the processed content back to 2.txt
#     with open("2.txt", "w") as file:
#         file.write("\n".join(processed_lines) + "\n")

#     print("Successfully processed and updated 2.txt.")
# except Exception as e:
#     print(f"An error occurred: {e}")


# ===

# with open("1.txt", "r") as file:
#     rows = [line.strip().split() for line in file.readlines()]


# # Ensure there are 4 rows and each row has 128 elements
# if len(rows) != 4 or any(len(row) != 128 for row in rows):
#     print("Rows:", rows)
#     for i, row in enumerate(rows):
#         print(f"Row {i+1} length: {len(row)}")
#     raise ValueError("The input file must contain exactly 4 rows with 128 binary values each.")



# # Convert binary values to decimal based on the weights
# # Row 1 is MSB (weight = 2^3), Row 4 is LSB (weight = 2^0)
# weights = [8, 4, 2, 1]  # 2^3, 2^2, 2^1, 2^0
# decimal_values = []

# for col in range(128):  # Process each column
#     decimal_value = sum(int(rows[row][col]) * weights[row] for row in range(4))
#     decimal_values.append(decimal_value)

# # Write the decimal values back to the file
# with open("1.txt", "w") as file:
#     for i, value in enumerate(decimal_values, start=1):
#         file.write(f"I{i}: {value}\n")
# # ===

# Read the content of 3.txt, process it, and overwrite it
# Read the content of 3.txt, process it, and overwrite it
# Read the content of 3.txt, process it, and overwrite it
# Read the content of 3.txt, process it, and overwrite it
# Read the content of 3.txt, process it, and overwrite it
# Read the content of 3.txt, process it to remove duplicates, and overwrite it
# Read the content of 1.txt, process it into rows of 32 numbers each, and save to 11.txt
# try:
#     # Read the input file
#     with open("1.txt", "r") as file:
#         lines = file.readlines()

#     # Extract numbers from the input
#     numbers = [line.split(":")[1].strip() for line in lines]

#     # Group numbers into rows of 32
#     processed_lines = [" ".join(numbers[i:i+32]) for i in range(0, len(numbers), 32)]

#     # Write the processed output to 11.txt
#     with open("11.txt", "w") as file:
#         file.write("\n".join(processed_lines) + "\n")

#     print("Successfully processed and saved to 11.txt.")
# except Exception as e:
#     print(f"An error occurred: {e}")
# def process_w_to_rows(input_file, output_file):
#     try:
#         # Read the input file
#         with open(input_file, "r") as file:
#             lines = file.readlines()

#         # Extract numbers and build a list
#         numbers = []
#         for line in lines:
#             # Split and extract the numeric value after ":"
#             _, value = line.split(":")
#             numbers.append(int(value.strip()))

#         # Prepare 32 rows (divide into 4 columns per row)
#         processed_rows = []
#         for i in range(0, len(numbers), 4):  # Break into rows of 4
#             processed_rows.append(numbers[i:i + 4])

#         # Write to a file in row format
#         with open(output_file, "w") as file:
#             for row in processed_rows:
#                 file.write(" ".join(map(str, row)) + "\n")

#         print(f"Successfully processed and saved rows to {output_file}.")
#     except Exception as e:
#         print(f"An error occurred: {e}")

# # Call the function with file names


# process_w_to_rows("4.txt", "44.txt")

#===

# Function to process the input file and modify the last 16 numbers of each row
# Function to process the input file and create Ixy to INM[] mapping
# def create_mapping(input_file, output_file):
#     try:
#         # Read the input file
#         with open(input_file, "r") as file:
#             line = file.readline().strip()  # Single row input

#         # Split the line into elements
#         elements = line.split()

#         # Generate mappings
#         mapping_lines = []
#         for idx, element in enumerate(elements):
#             mapping_lines.append(f"{element} : INM[{idx}]")

#         # Write the mappings to the output file
#         with open(output_file, "w") as file:
#             file.write("\n".join(mapping_lines) + "\n")

#         print(f"Successfully processed and saved mappings to {output_file}.")
#     except Exception as e:
#         print(f"An error occurred: {e}")

# # Call the function with file names
# create_mapping("9.txt", "99.txt")




# Function to generate 128 consecutive '1's and 'i's in two rows
# def generate_repeat_file(output_file):
#     try:
#         # Generate 128 consecutive '1's for the first row
#         first_row = ["1"] * 128
#         # Generate 128 consecutive 'i's for the second row
#         second_row = ["i"] * 128
        
#         # Write the rows to the output file
#         with open(output_file, "w") as file:
#             file.write("".join(first_row) + "\n")
#             file.write("".join(second_row) + "\n")
        
#         print(f"Successfully generated and saved to {output_file}.")
#     except Exception as e:
#         print(f"An error occurred: {e}")

# # Call the function to create the file
# generate_repeat_file("repeat.txt")




#===

# Function to process input files and modify XI rows based on mappings
# def process_rows_with_mapping(input_file, mapping_file, output_file):
#     try:
#         # Read the mapping file
#         with open(mapping_file, "r") as file:
#             mapping_lines = file.readlines()

#         # Create a dictionary for the mappings
#         mapping_dict = {}
#         for line in mapping_lines:
#             if ":" in line:
#                 key, value = line.split(":")
#                 mapping_dict[key.strip()] = value.strip()

#         # Read the input file
#         with open(input_file, "r") as file:
#             lines = file.readlines()

#         # Process each row
#         processed_lines = []
#         for line in lines:
#             if line.startswith("XI"):
#                 # Split the line into parts
#                 parts = line.split()
#                 # Replace the second part (e.g., I315) with its mapping if available
#                 if parts[1] in mapping_dict:
#                     parts[1] = mapping_dict[parts[1]]
#                 processed_lines.append(" ".join(parts))
#             else:
#                 # Keep XB rows unchanged
#                 processed_lines.append(line.strip())

#         # Write the processed lines to the output file
#         with open(output_file, "w") as file:
#             file.write("\n".join(processed_lines) + "\n")

#         print(f"Successfully processed and saved to {output_file}.")
#     except Exception as e:
#         print(f"An error occurred: {e}")

# # Call the function with file names
# process_rows_with_mapping("9.txt", "99.txt", "999.txt")

# Function to process the input file and modify as per the requirements
# Function to count the number of 0s and 1s in each row of a file
# 讀取 2.txt，處理後覆蓋輸出
# Read and process 2.txt
# Read and process 2.txt
# Read and process 2.txt
# Read and process 2.txt
# def process_file(file_path):
#     # Read the file
#     with open(file_path, 'r') as file:
#         rows = file.readlines()

#     # Process each row
#     processed_rows = []
#     for row in rows:
#         # Preserve spaces and original format, but process only 0 and 1 for filtering
#         digits_only = ''.join(filter(lambda x: x in '01', row))
#         processed_segment = digits_only[3:35]  # Extract the segment of interest
    
        
#         # Reinsert spaces into the processed segment
#         original_row = list(row.strip())
#         index = 0
#         for i in range(len(original_row)):
#             if original_row[i] in '01':
#                 original_row[i] = processed_segment[index]
#                 index += 1
#                 if index >= len(processed_segment):
#                     break
#         processed_row = ''.join(original_row)
#         processed_rows.append(processed_row)

#     # Write the processed rows back to the file
#     with open(file_path, 'w') as file:
#         for processed_row in processed_rows:
#             file.write(processed_row + '\n')

# # Specify the file path
# file_path = '2.txt'
# process_file(file_path)

# Function to trim rows to 32 numbers
# Function to process the binary rows and output decimal values
# Function to process the binary rows and output decimal values with 32 numbers per line
# def process_binary_rows(input_file, output_file):
#     try:
#         with open(input_file, "r") as file:
#             rows = file.readlines()

#         # Ensure rows are grouped correctly (4 rows per group)
#         if len(rows) % 4 != 0:
#             raise ValueError("The number of rows must be a multiple of 4.")

#         num_groups = len(rows) // 4
#         results = []

#         for g in range(num_groups):
#             # Get 4 rows for the current group
#             msb_row = rows[g * 4].strip().split()
#             row_2 = rows[g * 4 + 1].strip().split()
#             row_3 = rows[g * 4 + 2].strip().split()
#             lsb_row = rows[g * 4 + 3].strip().split()

#             # Ensure all rows have 32 values
#             if not all(len(row) == 32 for row in [msb_row, row_2, row_3, lsb_row]):
#                 raise ValueError("Each row must contain exactly 32 binary values.")

#             # Calculate the decimal values for I1 to I32
#             group_values = []
#             for i in range(32):
#                 value = (
#                     int(msb_row[i]) * 8 +
#                     int(row_2[i]) * 4 +
#                     int(row_3[i]) * 2 +
#                     int(lsb_row[i]) * 1
#                 )
#                 group_values.append(str(value))
            
#             # Add the group's result as a new line
#             results.append(" ".join(group_values))

#         # Write results to the output file, one group per line
#         with open(output_file, "w") as file:
#             file.write("\n".join(results) + "\n")

#         print(f"Successfully processed and saved to {output_file}.")
#     except Exception as e:
#         print(f"An error occurred: {e}")

# # Call the function with input and output file names
# process_binary_rows("2.txt", "21.txt")


# Function to process .IC lines and compute decimal values
# Function to process .IC lines and compute combined decimal values
# import re

# data = {}
# with open('output.txt') as f:
#     for line in f:
#         match = re.match(r'W_(\d+)_(\d+) : (\d+)', line.strip())
#         if match:
#             X, Y, val = map(int, match.groups())
#             if Y not in data:
#                 data[Y] = {}
#             data[Y][X] = val

# with open('131.txt', 'w') as f:
#     for Y in range(1, 33):
#         row = [str(data.get(Y, {}).get(X, 0)) for X in range(1, 5)]
#         f.write(' '.join(row) + '\n')



with open('a0.txt', 'r') as f0, open('a1.txt', 'r') as f1, open('a2.txt', 'w') as f2:
    a0 = list(map(int, f0.read().strip().split()))
    a1 = [int(line.strip()) for line in f1]
    result = ''.join(str(a0[i] * a1[4*i + j]) for i in range(32) for j in range(4))
    f2.write(result + '\n')





