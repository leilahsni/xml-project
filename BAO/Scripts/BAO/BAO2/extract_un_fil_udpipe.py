#!/usr/bin/python3

import sys
import re
import spacy_udpipe

#spacy_udpipe.download("fr-sequoia") # on télécharge fr-sequoia si ce n'est pas déjà fait
udpipe = spacy_udpipe.load("fr-sequoia") # on load fr-sequoia

regex_item = re.compile("<item><title>(.*?)<\/title>.*?<description>(.*?)<\/description>") # regex pour trouver les titres et les descriptions


def analyse_txt(texte):
    '''fonction pour annoter les données textuelles'''
    doc =  udpipe(texte)
    result = ""
    for token in doc:
        result += f"{token.text}\t{token.lemma_}\t{token.pos_}\n"
    return result

def token2xml(token):
    '''fonction pour ajouter des balises autour des annotations pour créer un fichier au format XML'''
    return f'<element><data type="type">{token.pos_}</data><data type="lemma">{token.lemma_}</data><data type="string">{token.text}</data></element>\n'

def analyse_xml(texte):
    '''fonction pour annoter du texte et retourner le tout sous format XML'''
    doc = udpipe(texte)
    result = ""
    for token in doc:
        result += token2xml(token)
    return result

def nettoyage(texte):
    '''fonction de nettoyage'''
    texte_net = re.sub("<!\[CDATA\[(.*?)\]\]>", "\\1", texte) 

    return texte_net


def extract_un_fil(fichier_rss, output_xml, output_txt):
    '''fonction principale qui va nous permettre de créer deux fichiers de sortie : un fichier texte et un fichier XML annotés'''
    with open(fichier_rss, "r") as input_rss: # on ouvre notre fichier texte
        lignes = input_rss.readlines() # on lit par ligne
        texte = "".join(lignes)
        for m in re.finditer(regex_item, texte): # si on trouve des titres ou descriptions
            titre_net = nettoyage(m.group(1)) # on récupère les titres
            description_net = nettoyage(m.group(2)) # puis les descriptions
            output_txt.write(analyse_txt(titre_net)) # on écrit le tout dans un fichier texte en oubliant pas l'étiquetage avec la fonction analyse_txt
            output_txt.write(analyse_txt(description_net))
            output_txt.write(f"\n---\n")
            item_xml = f"<item><titre>\n{analyse_xml(titre_net)}</titre><description>\n{analyse_xml(description_net)}</description></item>\n" # de même pour le fichier XML
            output_xml.write(item_xml)

if __name__ == "__main__":
    fichier_rss = sys.argv[1] # ce fichier sera créer avec le script BAO2.py
    fichier_xml = sys.argv[2]
    fichier_txt = sys.argv[3]
    extract_un_fil(fichier_rss, fichier_xml, fichier_txt)