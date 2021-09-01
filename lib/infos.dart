
int selectedFilm = 0;

List<Map> films = [
  {
    'title': 'Les tontons flingueurs',
    'posterLink': 'https://www.posterissim.com/62-large_default/les-tontons-flingueurs.jpg',
    'year': '1963',
    'genres': ['Comédie'],
    'description': "Fernand Naudin, ex-truand rangé, est appelé d'urgence par un des anciens \"frères d'armes\" qui lui a gardé toute sa confiance : surnommé \"le Mexicain\", ce dernier est mourant et veut charger Fernand non seulement de ses affaires mais aussi de veiller sur sa fille Patricia. Héritage très lourd, car les affaires en question sont plutôt louches - un tripot, une distillerie clandestine et une maison close ! - et convoitées par toute la bande qui secondait le Mexicain (notamment Théo et les frères Volfoni, Raoul et Paul) ; quant à Patricia, c'est une écervelée qui ne pense qu'à Antoine - un jeune snob tout aussi superficiel...",
    'actors': ['Lino Ventura', 'Bernard Blier', 'Francis Blanche'],
  },
  {
    'title': 'Interstella 5555',
    'posterLink': 'https://m.media-amazon.com/images/I/51XJXv0lSVL._AC_.jpg',
    'year': '	2003',
    'genres': ['Science-fiction'],
    'description': '',
    'actors': ['Daft punk'],
  },
  {
    'title': 'La Ligne verte',
    'posterLink': 'https://fr.web.img4.acsta.net/medias/nmedia/18/66/15/78/19254683.jpg',
    'year': '1999',
    'genres': ['Film dramatique'],
    'description': '',
    'actors': ['Tom Hanks', 'Michael Clarke Duncan', 'David Morse'],
  },
  {
    'title': 'La Cité de la peur',
    'posterLink': 'https://fr.web.img2.acsta.net/pictures/19/05/03/14/30/1132544.jpg',
    'year': '1994',
    'genres': ['Comédie'],
    'description': '',
    'actors': ['Alain Chabat', 'Dominique Farrugia', 'Chantal Lauby'],
  },
  {
    'title': 'Scary Movie',
    'posterLink': 'https://fr.web.img2.acsta.net/medias/04/97/17/049717_af.jpg',
    'year': '2000',
    'genres': ['Comédie parodique'],
    'description': '',
    'actors': ['Anna Faris', 'Dave Sheridan', 'Marlon Wayans'],
  },
  {
    'title': 'Monstres et Cie',
    'posterLink': 'https://images-na.ssl-images-amazon.com/images/I/81K7gPPORBL.jpg',
    'year': ' 2001',
    'genres': ['Comédie'],
    'description': '',
    'actors': ['Dominique Collignon-Maurin', 'Eric Métayer', 'Jacques Frantz'],
  },
  {
    'title': 'Je veux manger ton pancréas',
    'posterLink': 'https://fr.web.img4.acsta.net/pictures/19/02/28/10/26/3234290.jpg',
    'year': '2017',
    'genres': ['romance'],
    'description': '',
    'actors': ['Shun Oguri', 'Keiko Kitagawa', 'Minami Hamabe'],
  },
  {
    'title': 'Inception',
    'posterLink': 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRRhJNaN0nQi5oaoWPNzCEDgc-bXdofmz6LT7GbxjoukjWSgC-p',
    'year': '2010',
    'genres': ['Science-fiction'],
    'description': '',
    'actors': ['Leonardo DiCaprio', 'Joseph Gordon-Levitt', 'Elliot Page'],
  },
];
