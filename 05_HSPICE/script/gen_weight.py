import re
from collections import defaultdict

def calculate_weights(input_file, output_file):
    weights = {}

    with open(input_file, 'r') as infile:
        lines = infile.readlines()


    for line in lines:
        matches = re.findall(r"V\((W_\d+_\d+_\d+)\)\s*=\s*(\d)", line)
        for match in matches:
            node, value = match
            weight_key = "_".join(node.split("_")[:3])  
            if weight_key not in weights:
                weights[weight_key] = []
            weights[weight_key].append(int(value))  

    
    results = {}
    for weight, values in weights.items():
        
        grouped_values = [values[i:i + 4] for i in range(0, len(values), 4)]
        for index, group in enumerate(grouped_values):
            binary_value = "".join(map(str, group))  
            decimal_value = int(binary_value, 2)  
            weight_key = f"{weight}_{index + 1}" 
            results[weight_key] = decimal_value

   
    with open(output_file, 'w') as outfile:
        for weight, decimal_value in sorted(results.items()):
            outfile.write(f"{weight} : {decimal_value}\n")

def process_weights(input_file, output_file):
    weights = defaultdict(list)

    with open(input_file, 'r') as infile:
        lines = infile.readlines()

    
    for line in lines:
        match = re.match(r"(W_\d+_\d+)_\d+\s*:\s*(\d+)", line)
        if match:
            weight_key = match.group(1)
            value = int(match.group(2))
            weights[weight_key].append(value)

    
    sorted_weights = sorted(weights.items(), key=lambda x: tuple(map(int, x[0][2:].split("_"))))

   
    with open(output_file, 'w') as outfile:
        for weight_key, values in sorted_weights:
            outfile.write(f"{weight_key} : {sum(values)}\n")

input_file = "cal.txt"
mid_file = "cal_out.txt"
out_file = "cal_answer.txt"

calculate_weights(input_file, mid_file)
process_weights(mid_file,out_file )