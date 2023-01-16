import sys
from pathlib import Path
from extract_un_fil_udpipe import extract_un_fil # on importe notre fonction extract_un_fil du fichier extract_un_fil_udpipe.py

def parcours(dossier: Path, fichier_xml, fichier_txt, rubrique):
    '''fonction qui récupère tous les fichiers XML dans la catégorie qui nous interesse'''
    print(f"on traite {dossier}")
    for sub in sorted(dossier.iterdir()):
        if sub.is_dir(): # si le fichier est un dossier
            parcours(sub, fichier_xml, fichier_txt, rubrique) # recursion
        if sub.is_file() and sub.name.endswith(".xml") and rubrique in sub.name : # si le fichier est bien un fichier et fini par .xml
            print(f"on appelle extract_un_fil sur {sub}")
            extract_un_fil(sub, fichier_xml, fichier_txt) # on fait le traitement avec la fonction extract_un_fil

def main():
    '''fonction principale'''
    dossier = Path(sys.argv[1]) # on récupère notre dossier 2021
    rubrique = sys.argv[2] # notre rubrique (3246)
    with open(sys.argv[3], "w") as fichier_xml: # on créer un fichier XML
        with open(sys.argv[4], "w") as fichier_txt: # et un fichier texte
            header = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<corpus>\n"
            fichier_xml.write(header) # déclaration de version XML
            parcours(dossier, fichier_xml, fichier_txt, rubrique) # on lance notre fonction parcous
            fichier_xml.write("</corpus>\n") # on ajoute la balise racine fermante dans le fichier XML


if __name__ == "__main__":
    main()