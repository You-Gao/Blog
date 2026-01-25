"""
Exceptions:
A Political Economy
Heidegger
SARC
Physical Hand
Archives
Perfect Days
"""

import os

dirs = os.listdir('.')

def check_quotes(lines):
    QUOTED = 0
    for line in lines:
        if line.startswith(">") and "class" not in line:
            QUOTED = 1
            continue
        if QUOTED == 1 and "figcaption" not in line:
            return False
        QUOTED = 0 
    return True

for dir in dirs:
    if dir.startswith('_') and os.path.isdir(dir):
        for file in os.listdir(dir):
            if file.endswith('.md'):
                file_name = f'{dir}/{file}'
                with open(f'{dir}/{file}', 'r', errors='ignore') as f:
                    lines = f.readlines()
                    if check_quotes(lines) == False:
                        print(file_name)
                f.close()
