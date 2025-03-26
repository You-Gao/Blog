import os

dirs = os.listdir('.')

def check_quotes(lines):
    for line in lines:
        if line.startswith('>'):
            if "“" in line or "”" in line:
                print(f'Sus quotes in {line}')
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
                