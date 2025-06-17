import os

dirs = os.listdir('.')

def write_figcaption(file_name, lines):
    with open(file_name, 'w') as f:
        for line in lines:
            if "<figcaption" in line:
                print("figcaption in line")
                f.write("> "+ line)
                continue
            f.write(line)
    f.close()
    return False

for dir in dirs:
    if dir.startswith('_') and os.path.isdir(dir):
        for file in os.listdir(dir):
            if file.endswith('.md'):
                file_name = f'{dir}/{file}'
                with open(f'{dir}/{file}', 'r', errors='ignore') as f:
                    lines = f.readlines()
                    write_figcaption(file_name, lines)
                f.close()
