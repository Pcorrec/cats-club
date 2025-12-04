# language: en
Feature: Conformité de la page de connexion

	Scenario: Conformité de la page de connexion
		Given Je suis sur le site
		And Je suis sur la page de connexion
		Then Je vois un champ Identifiant au-dessus d'un champ Mot de passe, chaque champ est précédé d'une icône
		And En dessous des deux champs, il y a deux boutons côte à côte : Connexion et Mot de passe oublié