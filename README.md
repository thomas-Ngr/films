# films

Application pour films

## Organisation

fichiers :
- main.dart
	class Main()
	- une appbar
	- pour le thème, on verra après
	- un Drawer pour sélectionner 'films' ou 'moi'.
	- pas de bottom bar
- info.dart -> contient la liste d'objets films et les données utilisateur
	var films
- carousel.dart -> page de carousel
	class Carousel()
- details.dart -> details sur le film choisi
	class Details()
- user.dart -> details sur l'utilisateur et mosaique (ou liste) de films favoris
	class User()
- drawer.dart -> menu de coté

Etat de l'appli, variables :
- films -> un objet qui contient les films
- selected_film -> INT une variable qui contient l'index du film sélectionné
- page (?) -> INT index de la page en cours
