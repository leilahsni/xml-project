import re
from pathlib import Path
import sys

fic = sys.argv[1] # notre fichier XML avec les relations de dépendance

sent_buf = {} 
obj_buf = []
couples = set()

def clean(s: str):
    ''' fonction de nettoyage '''
    return re.sub('[^\w]', '', s)

for line in Path(fic).read_text().split("\n"):
    if line.startswith("<item>"): # si la ligne du fichier commence par la balise <item>
        fields = re.findall("<a>([^<]+)</a>", line) # on cherche tout les éléments entre les tags <a>
        idx, word, lemma, tag, _, _, head, rel, _, _ = fields # on les met dans des variables
        lemma = clean(lemma) # on nettoie nos lemmes avec la fonction clean
        sent_buf[idx] = lemma # on met cette lemme en clé dans notre dictionnaire
        if rel == 'obj': # si la relation de cette lemme est objet
            obj_buf.append((lemma, head)) # on ajoute cette lemme et son gouverneur en tant que tuple dans une liste
    if line == "</p>":
        for obj_lemma, head in obj_buf:
            #print(sent_buf[head], "--[obj]-->", obj_lemma)
            couples.add((f"{sent_buf[head]}", f"{obj_lemma}")) # on ajoute a notre set couples le couple (gouverneur, dependant)
        obj_buf = [] # on réeinitialise les buffer
        sent_buf = {}

# affichage dans le fichier texte -------------
print("@Gouv: #id, label")
for lemme in {gov for gov, _ in couples}:
    print(f'g_{lemme},{lemme}')
print("@Dep: #id, label")
for lemme in {dep for _, dep in couples}:
    print(f'd_{lemme},{lemme}')
print("_obj:")
for gouv, dep in couples:
    print(f"g_{gouv},--,d_{dep}")




