import os
import re 

dirs = os.listdir('.')



def write_expand_quotations(file_name, lines):
    with open(file_name, 'w') as f:
        for line in lines:
            if "*" in line or ">" in line or "<" in line:
                f.write(line)
                continue
            replace = re.findall(r'\"(.*?)\"', line)
            for r in replace:
                if "*" in r or ">" in r:
                    continue
                line = line.replace(f'"{r}"', f'"*{r}*"')
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
                
write_expand_quotations('test.md', ["The game as a concept isn't necessarily novel. Especially the whole discussion of how \"*novel*\" the interactive turn-based combat system is, when Paper Mario did that on the N64. Nevertheless, no game development company has taken that turn-based combat system and put it in Unreal Engine. The developers saw this gap in the market for \"a high-fidelity graphics turn-based RPG\" and decided to craft the masterpiece that is *Clair Obscur: Expedition 33*[^1]."])
               