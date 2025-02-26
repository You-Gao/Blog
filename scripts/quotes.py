import os

dirs = os.listdir('.')

def check_quotes(lines):
    for line in lines:
        if line.startswith('>'):
            if "\"" not in line:
                print(f'No quotes in {line}')
                return False
    return True

for dir in dirs:
    if dir.startswith('_') and os.path.isdir(dir):
        for file in os.listdir(dir):
            if file.endswith('.md'):
                with open(f'{dir}/{file}', 'r', errors='ignore') as f:
                    lines = f.readlines()
                    if not check_quotes(lines):
                        print(f'Errors found in {file}')
                