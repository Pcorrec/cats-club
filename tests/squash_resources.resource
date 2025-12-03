*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Je suis connecté
    Click Element  //nav//a[@href='connection.html']

    Input Text  id:loginInput  a
    Input Text  id:passwordInput  a

    Click Element  id:connectionButton

    Sleep  1

    Element Should Contain  id:navigation  Enrico Pallazzo

Je suis sur la page d'accueil
    Click Element    //nav//a[@href='index.html']
    Wait Until Page Contains Element    //h4[.='Bienvenue dans le Cats Club !']    
    Page Should Contain Element    //h4[.='Bienvenue dans le Cats Club !']

Je clique sur le bouton Galerie
    Click Element    href:"gallery.html"
    Wait Until Page Contains Element    //a[@href="gallery.html" and @class="nav-link active"]

Il existe une liste déroulante labélisé "Maître" de propriétaire de chat
    Page Should Contain Element    //label[.="Maître"]
    Page Should Contain List    id:ownerselect

Je suis sur la page Mon espace
    Click Element  //nav//a[@href='space.html']

    Title Should Be  Mon espace

Je vois les sections Ajouter un chat et Mes chats
    Element Should Be Visible  //h4[.='Ajouter un chat...']

    Element Should Be Visible  //h4[.='Mes chats...']

La section Ajouter un chat contient les champs Nom, Race, Date de naissance, Image et un bouton libellé Ajouter
    Element Should Be Visible  id:addCatNameInput
    Element Should Be Visible  id:addCatBreedSelect
    Element Should Be Visible  id:addCatDateInput
    Element Should Be Visible  id:addCatPictureInput
    Element Should Be Visible  id:addCatButton

La section Mes chats contient une liste des noms des chats déjà créés
    Element Should Be Visible  //h4[@id='catLinks']//a

Le message "Bienvenue dans le Cats Club !" est affiché
    Page Should Contain Element    //h4[.="Bienvenue dans le Cats Club !"]