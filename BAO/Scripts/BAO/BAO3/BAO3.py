from typing import List
import re
import sys
from pathlib import Path
import time

def extract(file: str, pattern: List[str]): #fonction alternative extract()

	buffer = [("---", "---")] * len(pattern) # buffer – window that slides over entire file by group of the size of the length of the pattern

	with open(file) as corpus:
		for line in corpus:

			buffer.pop(0) # on enlève le premier élément du buffer
			match = re.match('<element><data type="type">([^<]+?)</data><data type="lemma">[^<]+?</data><data type="string">([^<]+?)</data></element>', line)

			if match:
				tag = match.group(1) # on récupère les patrons
				form = match.group(2) # et leurs formes grâce à l'expression régulière match
				buffer.append((tag,form)) # on les ajoute à notre buffer
			else:
				buffer = [("---", "---")] * len(pattern)

			check = True
			term = ""

			for i, tag in enumerate(pattern): # on récupère le patron et son index
				if tag == buffer[i][0]:
					term = term + buffer[i][1] + f"/{tag} " # on ajoute la nouvelle forme qui correspond à notre variable terme
				else:
					check = False # sinon on sort de la boucle, le patron ne correspond pas

			if check:
				print(term) # si le patron correspond, on l'affiche sur le terminal

if __name__ == '__main__':

	start_time = time.time()
	
	file = sys.argv[1] # premier argument est notre fichier XML
	pattern = sys.argv[2:] # second argument et plus est notre patron

	extract(file, pattern)

	print("Running time : %ss" % (time.time() - start_time))
