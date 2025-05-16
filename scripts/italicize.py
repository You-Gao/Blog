import os

dirs = os.listdir('.')

def write_expand_quotations(file_name, lines):
    # replace " with "* and " with *"
    with open(file_name, 'w') as f:
        for line in lines:
            for word in line.split():
                if word.startswith('"') and word.endswith('"'):
                    line = line.replace(word, f'"*{word[1:-1]}*"')
            f.write(line)
    f.close()
    return True

for dir in dirs:
    if dir.startswith('_') and os.path.isdir(dir):
        for file in os.listdir(dir):
            if file.endswith('.md'):
                file_name = f'{dir}/{file}'
                with open(f'{dir}/{file}', 'r', errors='ignore') as f:
                    lines = f.readlines()
                    write_expand_quotations(file_name, lines)
                f.close()
                