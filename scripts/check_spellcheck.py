import os
from spellchecker import SpellChecker

spell = SpellChecker()
dirs = os.listdir('.')

score = 0
misspelled = []
corrected = []
count = 0 

for dir in dirs:
    if dir.startswith('_') and os.path.isdir(dir):
        for file in os.listdir(dir):
            if file.endswith('.md'):
                with open(f'{dir}/{file}', 'r', errors='ignore') as f:
                    lines = f.readlines()
                    for line in lines:
                        for word in line.split():
                            if word.startswith('>'):
                                continue
                            if not word.isalpha():
                                continue
                            count += 1
                            if word not in spell:
                                score += 1  
                                misspelled.append(word)
                                # corrected.append(spell.candidates(word))
                print('-' * 20)
                print(f'{file} - {score} errors: {misspelled}')
                # print(f'Corrected: {corrected}')
                print('-' * 20)
                score = 0
                misspelled = []
                # corrected = []
                
                
                    