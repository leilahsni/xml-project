<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <html lang='fr'>
            <head>
                <title>About Me</title>
                <style> 
                    *{
                    margin: 0;
                    padding: 0;
                    }
                    
                    body{
                    background-color: #c5e0c1;
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
                    
                    p {
                    text-align: center;
                    font-family: 'Sans-serif', 'Arial';
                    color: #6f806c;
                    }
                    
                    h1 {
                    text-align: center;
                    font-family: 'Sans-serif', 'Arial';
                    color: #6f806c;
                    margin-bottom: 20px;
                    font-size: 25px;
                    }
                    
                    #intro {
                    position: absolute;
                    left: 50%;
                    top: 50%;
                    -webkit-transform: translate(-50%, -50%);
                    transform: translate(-50%, -50%);
                    background-color: rgba(255, 255, 255, 0.2);
                    padding: 30px 30px 30px 30px;
                    border-radius: 10px;
                    }
                    
                    #copyright p {
                    position: absolute;
                    font-size: 13px;
                    left: 50%;
                    top: 95%;
                    -webkit-transform: translate(-50%, -50%);
                    transform: translate(-50%, -50%);
                    }
                </style>
                <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
            </head>
            <body>
                <div id="nav" onmouseout="$('#menu').hide();" onmouseover="$('#menu').show();">
                    <div id="dropdown">▼</div>
                    <ul id="menu">
                        <li><a href='main.xml'><xsl:value-of select="body/menu/e[1]"/></a></li>
                        <li><a href='./BAO/main.html'><xsl:value-of select="body/menu/e[2]"/></a></li>
                    </ul>
                </div>
                <div id="intro">
                    <h1>About Me</h1>
                    <p>Nom : HASSANI</p>
                    <p>Prénom : Leila</p>
                    <p>Université : INALCO</p>
                    <p>Contact : leilahassani@hotmail.fr</p>
                    <br/>
                    <p>Cette page ainsi que la page du cours de Document Structuré ont été faites entièrement par transformation de XML et de XSLT. Le site de Projet Encadré (BAO), lui, a été construit avec du HTML et du CSS. </p>
                    <br/>
                    <p>Le cours de Document Structuré est composé de 5 exercices :</p>
                    <br/>
                    <p>– Exercice 3 : TEI</p>
                    <p>– Exercice 5 : DUCHN (xml)</p>
                    <p>– Exercice 14 (parties 1 et parties 2) : Extraction dans les Fils RSS du Monde</p>
                    <p>– Exercice 15 : Patrons morphosyntaxiques / Relations de dépendance sur le Base TrameurFromRhapsodie</p>
                    <p>– Exercice 19 : Ulysse pour finir</p>
                    <br/>
                    <p>Le cours de Projet Encadré, lui, est composé de quatre Boites à Outils (BAO1, BAO2, BAO3 et BAO4) qui contiennent les scripts Perl et Python vus en cours commentés ainsi que les fichiers de sortie obtenu à chaque étape.</p>
                </div>
                <div id="copyright"><p><xsl:value-of select="body/copyright"/></p></div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>