import os

dirs = os.listdir('.')

def check_quotes(lines):
    AFTERQUOTE = False
    for line in lines:
        if line.startswith('>'):
            if not line.strip().endswith('"'):
                print(f'Error: {line.strip()}')
                return False
            AFTERQUOTE = True
        elif AFTERQUOTE:
            # check if lines not a figcaption return false
            if "figcaption" not in line:
                print(f'Error: {line.strip()}')
                return False
            else:
                AFTERQUOTE = False
        # if line.startswith('>'):
        #     if not line.strip().endswith('"'):
        #         print(f'Error: {line.strip()}')
        #         return False
        # if '<blockquote' in line and not 'figcaption' in line and not 'color: red;' in line:
        #     print(f'Error: {line.strip()}')
        #     return False 
        # if line.endswith(':'):
        #     print(f'Error: {line.strip()}')
        #     return False
           
    return True

for dir in dirs:
    if dir.startswith('_') and os.path.isdir(dir):
        for file in os.listdir(dir):
            if file.endswith('.md'):
                with open(f'{dir}/{file}', 'r', errors='ignore') as f:
                    lines = f.readlines()
                    if not check_quotes(lines):
                        print(f'Errors found in {file}')
                