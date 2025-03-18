import os

dirs = os.listdir('.')


def write_remove_tags(file_name, lines):
    # remove the line that starts with
    # categories:, lang:, last_modified_at:, tags:
    # - Book-Review, - Game-Review, - Life, - Work
    with open(file_name, 'w') as f:
        for line in lines:
            if not line.startswith('categories:') and not line.startswith('lang:') and not line.startswith('last_modified_at:') and not line.startswith('tags:'):
                if not line.startswith('- Book-Review') and not line.startswith('- Game-Review') and not line.startswith('- Life') and not line.startswith('- Work'):
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
                    write_remove_tags(file_name, lines)
                f.close()
                
                