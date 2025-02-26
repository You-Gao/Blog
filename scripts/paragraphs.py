import os

dirs = os.listdir('.')

def check_paragraphs(lines):
    for line in lines:
        if len(line.split(". ")) > 6 and len(line) > 400:
            print(f'Paragraph too long: {line}')
            return False
    return True

for dir in dirs:
    if dir.startswith('_') and os.path.isdir(dir):
        for file in os.listdir(dir):
            if file.endswith('.md'):
                with open(f'{dir}/{file}', 'r', errors='ignore') as f:
                    lines = f.readlines()
                    if not check_paragraphs(lines):
                        print(f'Errors found in {file}')
                