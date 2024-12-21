# 定義規則生成的函數
def generate_cim_cell_connections():
    # 設定行數與列數
    num_rows_input = 4  # Input 的行數
    num_cols_input = 32  # Input 的列數
    num_bits = 4  # 每個 Input 和 Weight 的位元數

    num_rows_weight = 32  # Weight 的行數
    num_cols_weight = 4  # Weight 的列數

    # 存放結果
    result_lines = []

    # 生成所有條目
    for row in range(1, num_rows_input + 1):  # Input 的行數
        for col in range(1, num_cols_input + 1):  # Input 的列數
            for bit in range(1, num_bits + 1):  # 每個位元數
                input_name = f"I_{row}_{col}_{bit}"
                output_name = f"O_{row}_{col}_{bit}"
                weight_name = f"W_{row}_{col}_{bit}"

                # 生成 X 條目
                line = f"X{len(result_lines) + 1} {input_name} {output_name} WL BL BLB {weight_name} qb CIM_cell"
                result_lines.append(line)

    return result_lines

# 將結果寫入檔案
def write_cim_cell_connections_to_file(file_name):
    connections = generate_cim_cell_connections()
    with open(file_name, "w") as file:
        file.write("\n".join(connections))

# 執行並輸出到檔案
write_cim_cell_connections_to_file("cim_cell_connections.txt")