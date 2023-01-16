#!/usr/bin/python3

import sys
import re
import os

def clean(text): 
	'''fonction de nettoyage, similaire à la fonction de nettoyage dans le fichier perl'''
	
	return re.sub("<!\[CDATA\[(.*)\]\]>", "\\1", text)

def parcoursarborescencefichier(repertory, category, txt_output, xml_output):
	''' fonction de récursion qui nous permet de récupérer les bons fichiers '''
	rep_regex = re.compile('^\.') # permet de vérifier que le fichier ne commence pas par un point
	file_regex = re.compile(f'.+\.xml$') # permet de vérifier que le fichier est bien au format XML 
	line_regex = re.compile('<item><title>(.+?)<\/title>.+?<description>(.+?)<\/description>') # regex pour récupérer les titres et descriptions

	for file in os.listdir(repertory):
		if rep_regex.match(file): # si notre fichier commence par un point
			continue # on passe
		else:
			file = repertory + "/" + file # sinon on récupère l'objet et on le rajoute au chemin

	if os.path.isdir(file): # si cet objet est un dossier
		parcoursarborescencefichier(file, category, txt_output, xml_output) # on refait ce qu'on a fait précédemment
	elif os.path.isfile(file): # sinon
		if file_regex.match(file): # on vérifie que c'est un fichier xml
			print(f"Traitement du fichier {file}.")
			with open (file, 'r', encoding='UTF-8') as file:
				for line in file.readlines():
					for match in line_regex.finditer(line):
						title = match.group(1) # on récupère les titres
						description = match.group(2) # et les descriptions grace à notre regex line_regex
						clean_title, clean_description = clean(title), clean(description) # on les nettoie avec notre fonction clean

						txt_output.write(f"TITRE : {clean_title} \n DESCRIPTION : {clean_description} \n---------------------\n")
						xml_output.write(f"<item>\n<titre>{clean_title}</titre>\n<description>{clean_description}</description>\n</item>\n")

					
if __name__ == '__main__':

	repertory = re.sub(r'\/$', '', sys.argv[1])
	category = sys.argv[2]

	txt_output = open('corpus-titre-description.txt', 'w', encoding='UTF-8')

	xml_output = open('pre-corpus-titre-description.xml', 'w', encoding='UTF-8')
	xml_output.write('<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<corpus>\n')

	parcoursarborescencefichier(repertory, category, txt_output, xml_output)

	xml_output.write('</corpus>')