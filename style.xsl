<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <html lang='fr'>
            <head>
                <title>Document structuré – Hassani Leila</title>
                <style>
                    *{
                    margin: 0;
                    padding: 0;
                    }
                    
                    html {
                    height: 100%;
                    }
                    
                    body {
                    height: 100%;
                    }
                    
                    a{
                    text-decoration:none;
                    color:white;
                    font-size:15px;
                    font-family: 'Raleway', 'Georgia', 'Sans-serif';}
                    
                    a:hover{
                    color:#454f43;
                    transition-duration: 500ms;
                    }
                    
                    .links {
                    margin: 20px;
                    }
                    
                    .links li {
                    display: inline;
                    list-style-type: none;
                    }
                    
                    #table tr td a {
                    background-color: rgba(255,255,255,0.2);
                    border-radius: 5px;
                    padding: 10px;
                    }
                    
                    table{
                    width:100%;
                    height:100%;
                    text-align:center;
                    font-size:25px;
                    font-family:'Raleway', 'Georgia', 'Sans-serif';
                    border-collapse:collapse;
                    color:white
                    }
                    
                    .click-me:hover{
                    transition-duration: 500ms;
                    background-color:#e6e5e3;
                    }
                    
                    #click-me1{
                    background:#B4CFB0;
                    }
                    
                    #slide1{
                    background-color:#B4CFB0;
                    }
                    
                    #click-me2{
                    background-color:#94B49F;
                    }
                    
                    #slide2{
                    background-color:#94B49F;
                    }
                    
                    #click-me6{
                    background-color:#789395;
                    }
                    
                    #slide6{
                    background-color:#789395;
                    }
                    
                    #click-me3{
                    background:#63797a;
                    }
                    
                    #slide3{
                    background-color:#63797a;
                    }
                    
                    #click-me4{
                    background:#516363;
                    }
                    
                    #slide4{
                    background-color:#516363;
                    }
                    
                    #click-me5{
                    background:#3e4d4d;
                    }
                    
                    #slide5{
                    background:#3e4d4d;
                    }
                    
                    .slide{
                    display:none;
                    }
                    
                    
                    .click-me{
                    cursor:pointer;
                    }
                    
                    #table tr td p {
                    font-size: 14px;
                    padding: 10px 200px 10px 200px;
                    font-family: 'Raleway', 'Georgia', 'Sans-serif';
                    }
                    
                    #menu {
                    text-align: center;
                    background-color: #c5e0c1;
                    color: white;
                    font-family: 'Raleway', 'Georgia', 'Sans-serif';
                    padding: 15px 0px 15px 0px;
                    width: 100%;
                    list-style: none;
                    display: none;
                    }
                    
                    #dropdown {
                    color: white;
                    background-color: #c5e0c1;
                    text-align: center;
                    width: 100%;
                    height: 100%;
                    font-size: 10px;
                    }
                    
                    #menu > li {
                    display: inline;
                    padding: 10px 30px 10px 30px;
                    border-radius: 5px;
                    }
                    
                    #menu > li:hover {
                    background-color: rgba(255,255,255,0.2);
                    }
                </style>
                <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
                <script>
                    $(document).ready(function(){
                        $("#click-me1").click(function(){
                        $("#slide1").slideToggle();
                           });
                    });
                    
                    $(document).ready(function(){
                        $("#click-me2").click(function(){
                            $("#slide2").slideToggle();
                         });
                    });
                    
                    $(document).ready(function(){
                        $("#click-me3").click(function(){
                            $("#slide3").slideToggle();
                         });
                    });
                    
                    $(document).ready(function(){
                        $("#click-me4").click(function(){
                            $("#slide4").slideToggle();
                        });
                    });
                    
                    $(document).ready(function(){
                         $("#click-me5").click(function(){
                            $("#slide5").slideToggle();
                         });
                    });
                    
                    $(document).ready(function(){
                            $("#click-me6").click(function(){
                                $("#slide6").slideToggle();
                         });
                    });
                    
                </script>
            </head>
            <body>
                <div id="nav" onmouseout="$('#menu').hide();" onmouseover="$('#menu').show();">
                    <div id="dropdown">▼</div>
                    <ul id="menu">
                        <li><a href="about-me.xml"><xsl:value-of select="body/menu/e[1]"/></a></li>
                        <li><a href="./BAO/main.html"><xsl:value-of select="body/menu/e[2]"/></a></li>
                    </ul>
                </div>
                <table id="table">
                    <xsl:for-each select="body/exercices">
                        <tr class="click-me" id="click-me1">
                            <td id="three"><xsl:value-of select="exercice[@n='3']"/></td>
                        </tr>
                        <tr class="slide" id="slide1">
                            <td id="three"><xsl:value-of select="div[@n='3']"/>
                                <p>"Le but de cet exercice est de créer un fichier XML/TEI à partir d’un document txt obtenu par océrisation du Dictionnaire universel (1690) d’Antoine Furetière. Le but ultime est de pouvoir comparer ce dictionnaire avec la version revue et augmentée par Henri Basnage de Beauval."<br/><br/>Les mots que j'ai choisi pour cet exercice sont CARVI et CASTOREUM.</p>
                                <p><a href="./Exercices/Exercice-3/exercice-3.xml" download="exercice-3.xml">Fichier XML</a></p>
                            </td>
                        </tr>
                        <tr class="click-me" id="click-me2">
                            <td id="five"><xsl:value-of select="exercice[@n='5']"/></td>
                        </tr>
                        <tr class="slide" id="slide2">
                            <td id="five"><xsl:value-of select="div[@n='5']"/>
                                <p>Le Père Duchesne est le titre de différents journaux qui ont paru sous plusieurs plumes durant la Révolution française. Le plus populaire était celui de Jacques-René Hébert, qui en a fait paraître 385 numéros de septembre 1790 jusqu’à onze jours avant sa mort à la guillotine, survenue le 4 germinal An II (24 mars 1794).</p>
                                <p>Définir une feuille de style dont le résultat est un document HTML et donnant à voir uniquement le texte.</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-5/5.1/duchn_1.xml" download="duchn_1.xml">Fichier XML</a></li>
                                    <li><a href="./Exercices/Exercice-5/5.1/style_duchn_1.xsl" download="style_duchn_1.xsl">Fichier XSL</a></li>
                                    <li><a href="./Exercices/Exercice-5/5.1/duchn_1.html">Fichier HTML</a></li>
                                </ul>
                                <p>Définir une feuille de style dont le résultat est un document HTML et donnant à voir uniquement le texte en surlignant les mots dont le lemme est « aristocrate » ou « patriote ».</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-5/5.2/duchn_2.xml" download="duchn_2.xml">Fichier XML</a></li>
                                    <li><a href="./Exercices/Exercice-5/5.2/style_duchn_2.xsl" download="style_duchn_2.xsl">Fichier XSL</a></li>
                                    <li><a href="./Exercices/Exercice-5/5.2/duchn_2.html">Fichier HTML</a></li>
                                </ul>
                                <p>Définir une feuille de style dont le résultat est un document TXT contenant la liste des mots contenant la séquence « citoy », puis la séquence « patriot » ; compter aussi la fréquence de chacun des mots</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-5/5.3/duchn_3.xml" download="duchn_3.xml">Fichier XML</a></li>
                                    <li><a href="./Exercices/Exercice-5/5.3/style_duchn_3.xsl" download="style_duchn_3.xsl">Fichier XSL</a></li>
                                    <li><a href="./Exercices/Exercice-5/5.3/duchn_3.html">Fichier texte</a></li>
                                </ul>
                                <p>Définir une feuille de style dont le résultat est un document TXT contenant la liste des catégories ; compter aussi la fréquence de chacune</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-5/5.4/duchn_4.xml" download="duchn_3.xml">Fichier XML</a></li>
                                    <li><a href="./Exercices/Exercice-5/5.4/style_duchn_4.xsl" download="style_duchn_3.xsl">Fichier XSL</a></li>
                                    <li><a href="./Exercices/Exercice-5/5.4/duchn_4.txt">Fichier texte</a></li>
                                </ul>
                                <p>Définir une feuille de style permettant d’afficher le texte en surlignant les mots de catégories NOM ou ADJ</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-5/5.5/duchn_5.xml" download="duchn_5.xml">Fichier XML</a></li>
                                    <li><a href="./Exercices/Exercice-5/5.5/style_duchn_5.xsl" download="style_duchn_5.xsl">Fichier XSL</a></li>
                                    <li><a href="./Exercices/Exercice-5/5.5/duchn_5.html">Fichier HTML</a></li>
                                </ul>
                                <p>Définir une feuille de style dont le résultat est un document TXT contenant la liste des séquences NOM ADJ</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-5/5.6/duchn_6.xml" download="duchn_6.xml">Fichier XML</a></li>
                                    <li><a href="./Exercices/Exercice-5/5.6/style_duchn_6.xsl" download="style_duchn_6.xsl">Fichier XSL</a></li>
                                    <li><a href="./Exercices/Exercice-5/5.6/duchn_6.txt">Fichier texte</a></li>
                                </ul>
                                <p>Idem avec NOM PREP NOM</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-5/5.5/duchn_7.xml" download="duchn_7.xml">Fichier XML</a></li>
                                    <li><a href="./Exercices/Exercice-5/5.5/style_duchn_7.xsl" download="style_duchn_7.xsl">Fichier XSL</a></li>
                                    <li><a href="./Exercices/Exercice-5/5.5/duchn_7.txt">Fichier texte</a></li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="click-me" id="click-me6">
                            <td id="eight"><xsl:value-of select="exercice[@n='8']"/></td>
                        </tr>
                        <tr class="slide" id="slide6">
                            <td id="five"><xsl:value-of select="div[@n='8']"/>
                                <p>Compléter la feuille de style [RegroupeParClassesAnciennete.xsl] pour que le résultat soit un tableau HTML avec un titre occupant toute la largeur du tableau pour chaque classe d'ancienneté, un titre pour chaque colonne et une ligne pour chaque infirmière.</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-8/SignaletiqueInfirmierecorpusPREMA00.xml" download="SignaletiqueInfirmierecorpusPREMA00.xml">Fichier XML</a></li>
                                    <li><a href="./Exercices/Exercice-8/RegroupeParClassesAnciennete.xsl" download="RegroupeParClassesAnciennete.xsl">Fichier XSL</a></li>
                                    <li><a href="./Exercices/Exercice-8/main.html">Fichier HTML</a></li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="click-me" id="click-me3">
                            <td id="fourteen"><xsl:value-of select="exercice[@n='14']"/></td>
                        </tr>
                        <tr class="slide" id="slide3">
                            <td id="fourteen"><xsl:value-of select="div[@n='14']"/>
                                <h6>14.1 – XSLT</h6>
                                <p>Construire une feuille de styles pour afficher les contenus étiquetés avec TreeTagger</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-1/xslt/14.1/3208-2017-14_1.xml" download="3208-2017-14_1.xml">Fichier XML</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-1/xslt/14.1/style_1.xsl" download="style_1.xsl">Fichier XSL</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-1/xslt/14.1/14-1.html">Fichier HTML</a></li>
                                </ul>
                                <p>Construire des feuilles de style pour extraire (au format TXT) au moins 3 patrons morphosyntaxiques (de longueurs différentes) sur les mêmes fichiers</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-1/xslt/14.2/ADJ-NOM.zip" download="ADJ-NOM.zip">ADJ-NOM</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-1/xslt/14.2/DET-ADJ-NOM.zip" download="DET-ADJ-NOM.zip">DET-ADJ-NOM</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-1/xslt/14.2/NOM-PRP-NOM-ADJ.zip">NOM-PRP-NOM-ADJ</a></li>
                                </ul>
                                <p>Construire une feuille de styles pour afficher les contenus étiquetés avec TreeTagger en mettant au jour un patron morphosyntaxique</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-1/xslt/14.3/3208-2017-14_3.xml" download="3208-2017-14_3.xml">Fichier XML</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-1/xslt/14.3/style_1.xsl" download="style_14-3.xsl">Fichier XSL</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-1/xslt/14.3/14-3.html">Fichier HTML</a></li>
                                </ul>
                                <h6>14.1 – XQuery</h6>
                                <p>Construire une requête pour extraire les contenus textuels des titres</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-1/xquery/xquery-1/xquery-1.txt">Requête</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-1/xquery/xquery-1/xquery-1.xml" download="xquery-1.xml">Résultats</a></li>
                                </ul>
                                <p>Construire une requête pour extraire les contenus textuels des descriptions</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-1/xquery/xquery-2/xquery-2.txt">Requête</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-1/xquery/xquery-2/xquery-2.xml" download="xquery-2.xml">Résultats</a></li>
                                </ul>
                                <p>Construire une requête pour extraire les contenus textuels des titres ET des descriptions</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-1/xquery/xquery-3/xquery-3.txt">Requête</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-1/xquery/xquery-3/xquery-3.xml" download="xquery-3.xml">Résultats</a></li>
                                </ul>
                                <p>Construire une requête pour extraire les patrons morpho-syntaxiques NOM ADJ</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-1/xquery/xquery-4/xquery-4.txt">Requête</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-1/xquery/xquery-4/xquery-4.xml" download="xquery-4.xml">Résultats</a></li>
                                </ul>
                                <p>Construire une requête pour extraire les patrons morpho-syntaxiques NOM PRP NOM</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-1/xquery/xquery-5/xquery-5.txt">Requête</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-1/xquery/xquery-5/xquery-5.xml" download="xquery-5.xml">Résultats</a></li>
                                </ul>
                                <h6>14.2 – XSLT</h6>
                                <p>Construire une feuille de styles pour afficher les contenus étiquetés des « titres » uniquement</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.1/corpus-titre-description.udpipe.xml" download="corpus-titre-description.udpipe.xml">Fichier XML</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.1/14-2-1.xsl" download="14-2-1.xsl">Fichier XSL</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.1/14-2.1.html">Fichier HTML</a></li>
                                </ul>
                                <p>Peut-on envisager de construire une feuille de styles pour afficher chaque « titre » en regard de sa « description » : par exemple un tableau avec 2 colonnes, à gauche les titres et à droite les descriptions (un alignement en somme) ? si cela n’est pas possible directement, quel est l’alignement minimal que l’on peut mettre en oeuvre ?</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.2/corpus-titre-description.udpipe.xml" download="corpus-titre-description.udpipe.xml">Fichier XML</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.2/14-2-2.xsl" download="14-2-2.xsl">Fichier XSL</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.2/14-2.2.html">Fichier HTML</a></li>
                                </ul>
                                <p>Construire des feuilles de style pour extraire (au format TXT) au moins 3 patrons morphosyntaxiques (de longueurs différentes) sur les « titres » uniquement puis sur les « descriptions » uniquement</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.3/DET-NOUN.zip" download="DET-NOUN.zip">DET-NOUN</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.3/DET-NOUN-ADJ.zip" download="DET-NOUN-ADJ.xsl">DET-NOUN-ADJ</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.3/ADV-ADP-ADJ-NOUN.zip" download="ADV-ADP-ADJ-NOUN.xsl">ADV-ADP-ADJ-NOUN</a></li>
                                </ul>
                                <p>Construire une feuille de styles pour afficher les contenus étiquetés en mettant au jour un patron morphosyntaxique sur les « titres » uniquement puis sur les « descriptions » uniquement</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.4/corpus-titre-description.udpipe.xml" download="corpus-titre-description.udpipe.xml">Fichier XML</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.4/14-2-4.xsl" download="14-2-4.xsl">Fichier XSL</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.4/14-2-4.html">Fichier HTML</a></li>
                                </ul>
                                <p>Construire une feuille de styles pour extraire (au format TXT) les items en relation de dépendance syntaxique de type OBJ (les classer et les compter). Essayer de tenir compte de la différence titre/description</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.5/corpus-titre-description.udpipe.xml" download="corpus-titre-description.udpipe.xml">Fichier XML</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.5/14-2-5-TITRES.xsl" download="14-2-5-TITRES.xsl">Fichier XSL – Titres</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.5/14-2-5-TITRES.txt">Fichier texte - Titres</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.5/14-2-5-DESCRIPTIONS.xsl" download="14-2-5-DESCRIPTIONS.xsl">Fichier XSL – Descriptions</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.5/14-2-5-DESCRIPTIONS.txt">Fichier texte - Descriptions</a></li>
                                </ul>
                                <p>Construire une feuille de styles pour extraire la liste des POS en relation de dépendance syntaxique de type OBJ (les classer et les compter)</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.6/corpus-titre-description.udpipe.xml" download="corpus-titre-description.udpipe.xml">Fichier XML</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.6/14-2-6-TITRES.xsl" download="14-2-6-TITRES.xsl">Fichier XSL – Titres</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.6/14-2-6-TITRES.txt">Fichier texte - Titres</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.6/14-2-6-DESCRIPTIONS.xsl" download="14-2-6-DESCRIPTIONS.xsl">Fichier XSL – Descriptions</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xslt/14-2.6/14-2-6-DESCRIPTIONS.txt">Fichier texte - Descriptions</a></li>
                                </ul>
                                <h6>14.2 – XQuery</h6>
                                <br/>
                                <ul><li><a href="./Exercices/Exercice-14/14-2/xquery/corpus-titre-description.udpipe.xml">Fichier XML</a></li></ul>
                                <br/>
                                <p>Construire une requête pour compter le nombre de titres, le nombre de descriptions.</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-2/xquery/14-2.1/14-2.1.txt">Requête</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xquery/14-2.1/resultats.txt">Résultats</a></li>
                                </ul>
                                <p>Construire une requête pour extraire les contenus textuels des « titres »</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-2/xquery/14-2.2/14-2.2.txt">Requête</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xquery/14-2.2/resultats.xml" download="resultats.xml">Résultats</a></li>
                                </ul>
                                <p>Construire une requête pour extraire les contenus textuels des « descriptions »</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-2/xquery/14-2.3/14-2.3.txt">Requête</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xquery/14-2.3/resultats.xml" download="resultats.xml">Résultats</a></li>
                                </ul>
                                <p>Construire une requête pour extraire les contenus textuels des titres ET des descriptions</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-2/xquery/14-2.4/14-2.4.txt">Requête</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xquery/14-2.4/resultats.xml" download="resultats.xml">Résultats</a></li>
                                </ul>
                                <p>Construire une requête pour extraire au moins 3 patrons morpho-syntaxiques (de longueurs différentes)</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-2/xquery/14-2.5/NOM-ADJ.zip" download="NOM-ADJ.zip">NOM-ADJ</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xquery/14-2.5/DET-ADJ-NOM.zip" download="DET-NOM-ADJ.zip">DET-ADJ-NOM</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xquery/14-2.5/DET-ADJ-NOM-ADJ.zip" download="DET-ADJ-NOM-ADJ.zip">DET-ADJ-NOM-ADJ</a></li>
                                </ul>
                                <p>Construire une requête pour extraire les items portant une relation de dépendance syntaxique de type OBJ</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-2/xquery/14-2.6/14-2.6.txt">Requête</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xquery/14-2.6/resultats.xml" download="resultats.xml">Résultats</a></li>
                                </ul>
                                <p>Construire une requête pour extraire les items en relation de dépendance syntaxique de type SUB (on affichera les formes ou les lemmes connectés par cette relation)</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-14/14-2/xquery/14-2.7/14-2.7.txt">Requête</a></li>
                                    <li><a href="./Exercices/Exercice-14/14-2/xquery/14-2.7/resultats.xml" download="resultats.xml">Résultats</a></li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="click-me" id="click-me4">
                            <td id="fifteen"><xsl:value-of select="exercice[@n='15']"/></td>
                        </tr>
                        <tr class="slide" id="slide4">
                            <td id="fifteen"><xsl:value-of select="div[@n='15']"/>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-15/baseTrameurFromRhapsodie-echantillon.xml" download="baseTrameurFromRhapsodie-echantillon.xml">Fichier XML</a></li>
                                </ul>
                                <h6>XSLT</h6>
                                <p>Construire une feuille de styles pour afficher uniquement le texte (sortie TXT)</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-15/xslt/15.1/15-1.xsl" download="15-1.xsl">Fichier XSL</a></li>
                                    <li><a href="./Exercices/Exercice-15/xslt/15.1/15-1.txt">Fichier texte</a></li>
                                </ul>
                                <p>Construire une feuille de styles pour afficher (au format HTML) le texte en insérant sur chaque item sa POS</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-15/xslt/15.2/15-2.xsl" download="15-2.xsl">Fichier XSL</a></li>
                                    <li><a href="./Exercices/Exercice-15/xslt/15.2/15-2.html">Fichier HTML</a></li>
                                </ul>
                                <p>Construire une feuille de styles pour extraire (en format TXT) au moins 2 patrons morphosyntaxiques de longueurs différentes</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-15/xslt/15.3/DET-NOM.zip" download="DET-NOM.zip">DET-NOM</a></li>
                                    <li><a href="./Exercices/Exercice-15/xslt/15.3/DET-ADJ-NOM.zip" download="DET-ADJ-NOM.zip">DET-ADJ-NOM</a></li>
                                </ul>
                                <p>Construire une feuille de styles pour extraire (au format TXT) les items en relation de dépendance syntaxique de type SUJET (les classer et les compter)</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-15/xslt/15.4/15-4.xsl" download="15-4.xsl">Fichier XSL</a></li>
                                    <li><a href="./Exercices/Exercice-15/xslt/15.4/15-4.txt">Fichier texte</a></li>
                                </ul>
                                <p>Construire une feuille de styles pour extraire la liste des POS en relation de dépendance syntaxique de type SUJET (les classer et les compter)</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-15/xslt/15.5/15-5.xsl" download="15-5.xsl">Fichier XSL</a></li>
                                    <li><a href="./Exercices/Exercice-15/xslt/15.5/15-5.txt">Fichier texte</a></li>
                                </ul>
                                <h6>XQuery</h6>
                                <p>Construire une requête pour extraire les items portant une relation de dépendance syntaxique de type OBJ</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-15/xquery/xquery-1/xquery-1.txt">Requête</a></li>
                                    <li><a href="./Exercices/Exercice-15/xquery/xquery-1/xquery-1-result.txt">Résultats</a></li>
                                </ul>
                                <p>Construire une requête pour extraire les items en relation de dépendance syntaxique de type OBJ (on affichera les formes ou les lemmes connectés par cette relation)</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-15/xquery/xquery-2/xquery-2.txt">Requête</a></li>
                                    <li><a href="./Exercices/Exercice-15/xquery/xquery-2/xquery-2-result.txt">Résultats</a></li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="click-me" id="click-me5">
                            <td id="nineteen"><xsl:value-of select="exercice[@n='19']"/></td>
                        </tr>
                        <tr class="slide" id="slide5">
                            <td id="nineteen"><xsl:value-of select="div[@n='19']"/>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-19/xslt/ulysse.xml" download="ulysse.xml">Fichier XML</a></li>
                                </ul>
                                <h6>XSLT</h6>
                                <p>Ecrire une feuille de styles XSLT pour extraire uniquement le volet anglais de cet alignement (au format txt)</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-19/xslt/anglais.xsl" download="anglais.xsl">Fichier XSL – Anglais</a></li>
                                    <li><a href="./Exercices/Exercice-19/xslt/anglais.txt">Fichier texte – Anglais</a></li>
                                </ul>
                                <p>Ecrire une feuille de styles XSLT pour extraire uniquement le volet français de cet alignement (au format txt)</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-19/xslt/francais.xsl" download="anglais.xsl">Fichier XSL – Français</a></li>
                                    <li><a href="./Exercices/Exercice-19/xslt/francais.txt">Fichier texte – Français</a></li>
                                </ul>
                                <p>A partir des commandes précédentes, écrire une « commande » pour compter le nombre de mots dans chacun des 2 volets de cet alignement</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-19/xslt/nb-mots.txt">Resultats</a></li>
                                </ul>
                                <p>Après avoir choisi un "mot" anglais ou français, écrire une feuille de styles XSLT pour extraire tous les bi-contextes contenant ce mot (le contexte contenant le mot choisi et sa traduction). Faire une sortie HTML dans laquelle le mot choisi initialement est mis en valeur « graphiquement ».</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-19/xslt/bi-contextes.xsl" download="bi-contextes.xs">Fichier XSL</a></li>
                                    <li><a href="./Exercices/Exercice-19/xslt/bi-contextes.html">Fichier HTML</a></li>
                                </ul>
                                <h6>XQuery</h6>
                                <p>Après avoir choisi un « mot » anglais ou français, écrire une requête pour extraire tous les bicontextes contenant ce mot (le contexte contenant le mot choisi et sa traduction)</p>
                                <ul class="links">
                                    <li><a href="./Exercices/Exercice-19/xquery/query.txt">Requête</a></li>
                                    <li><a href="./Exercices/Exercice-19/xquery/resultats.xml" download="resultats.xml">Resultats</a></li>
                                </ul>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>