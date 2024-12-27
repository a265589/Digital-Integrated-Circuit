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
def process_w_to_rows(input_file, output_file):
    try:
        # Read the input file
        with open(input_file, "r") as file:
            lines = file.readlines()

        # Extract numbers and build a list
        numbers = []
        for line in lines:
            # Split and extract the numeric value after ":"
            _, value = line.split(":")
            numbers.append(int(value.strip()))

        # Prepare 32 rows (divide into 4 columns per row)
        processed_rows = []
        for i in range(0, len(numbers), 4):  # Break into rows of 4
            processed_rows.append(numbers[i:i + 4])

        # Write to a file in row format
        with open(output_file, "w") as file:
            for row in processed_rows:
                file.write(" ".join(map(str, row)) + "\n")

        print(f"Successfully processed and saved rows to {output_file}.")
    except Exception as e:
        print(f"An error occurred: {e}")

# Call the function with file names


process_w_to_rows("4.txt", "44.txt")











