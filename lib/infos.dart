
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
    'description': "Film d’animation japonais musical de science-fiction, réalisé par Kazuhisa Takenouchi et par le studio Toei Animation, co-réalisé par Bernard Deyriès et sorti en 2003. Il allie le graphisme de Leiji Matsumoto, dessinateur d’Albator et la musique intégrale de l’album Discovery du groupe Daft Punk. Il relate l'histoire d'un groupe de musiciens extra-terrestres kidnappés qui deviennent des stars sur Terre, puis tentent de retrouver leurs souvenirs et leur liberté.",
    'actors': ['Daft punk'],
  },
  {
    'title': 'La Ligne verte',
    'posterLink': 'https://fr.web.img4.acsta.net/medias/nmedia/18/66/15/78/19254683.jpg',
    'year': '1999',
    'genres': ['Film dramatique'],
    'description': "En 1996, Paul Edgecomb, un ancien gardien-chef d'un pénitencier dans les années 1930, entreprend d'écrire ses mémoires. Il revient sur l'affaire de John Coffey — ce grand Noir au regard absent, condamné à mort pour le viol et le meurtre de deux fillettes — qui défraya la chronique de 1935.\n\nLe pénitencier où travaille Paul est surnommé «la Ligne verte » : il s'agit du Cold Mountain, en Louisiane, là ou tous les condamnés à la chaise électrique passent leurs derniers jours.\n\nLe jour d'arrivée de John Coffey (en octobre 1935), les gardiens sont très surpris par la taille du colosse, mais ils sont aussi très impressionnés qu'au fond de lui se cache un vrai cœur d'enfant. ",
    'actors': ['Tom Hanks', 'Michael C. Duncan', 'David Morse'],
  },
  {
    'title': 'La Cité de la peur',
    'posterLink': 'https://fr.web.img2.acsta.net/pictures/19/05/03/14/30/1132544.jpg',
    'year': '1994',
    'genres': ['Comédie'],
    'description': "La Cité de la peur (titre long : La Cité de la peur, une comédie familiale) est une comédie policière française, écrite par le trio comique Les Nuls et réalisée par Alain Berbérian, sortie en 1994.\nL'histoire se déroule dans les années 1990 durant le festival de Cannes, les projectionnistes d'un mauvais film d'horreur nommé Red Is Dead sont assassinés successivement par un mystérieux tueur armé d'un marteau et une faucille comme dans le film. L'attachée de presse du film, Odile Deray (Chantal Lauby), comprend rapidement l’intérêt de ces meurtres pour la notoriété du film, elle fait venir l'acteur principal, Simon Jérémi (Dominique Farrugia), et engage un garde du corps, Serge Karamazov (Alain Chabat). Le commissaire Bialès (Gérard Darmon) est chargé d'enquêter sur ces meurtres.",
    'actors': ['Alain Chabat', 'Dominique Farrugia', 'Chantal Lauby'],
  },
  {
    'title': 'Scary Movie',
    'posterLink': 'https://fr.web.img2.acsta.net/medias/04/97/17/049717_af.jpg',
    'year': '2000',
    'genres': ['Comédie parodique'],
    'description': "Un soir, une jeune fille reçoit un appel anonyme d'un maniaque. Traquée dans sa maison, puis dans son jardin, elle finit par être tuée. Sa mort plonge ses camarades de lycée en plein cauchemar, d'autant qu'ils doivent désormais faire face à un tueur en série, caché parmi eux.",
    'actors': ['Anna Faris', 'Dave Sheridan', 'Marlon Wayans'],
  },
  {
    'title': 'Monstres et Cie',
    'posterLink': 'https://images-na.ssl-images-amazon.com/images/I/81K7gPPORBL.jpg',
    'year': ' 2001',
    'genres': ['Comédie'],
    'description': "L'histoire se déroule à Monstropolis, une ville habitée par toutes sortes de créatures. Au cœur de la ville se situe l'usine de traitements de cris d'enfants, énergie nécessaire à la ville. Des monstres se rendent chaque jour chez des enfants par les portes de placard pour recueillir leurs précieux cris pour les transformer en énergie...",
    'actors': ['Dominique Collignon-Maurin', 'Eric Métayer', 'Jacques Frantz'],
  },
  {
    'title': 'Je veux manger ton pancréas',
    'posterLink': 'https://fr.web.img4.acsta.net/pictures/19/02/28/10/26/3234290.jpg',
    'year': '2017',
    'genres': ['romance'],
    'description': "Film dramatique japonais réalisé par Shō Tsukikawa, sorti en 2017. Il s'agit d'une adaptation du roman homonyme de Yoru Sumino.\n\nUn lycéen (Takumi Kitamura (en)) trouve le journal intime d'une camarade appelée Sakura Yamauchi (Minami Hamabe) qui souffre d'une maladie du pancréas. Il apprend à la connaître brièvement avant qu'elle ne meure.\n\nDouze ans plus tard, suivant les conseils de Sakura, le lycéen (Shun Oguri) est devenu professeur dans son ancien lycée. Kyoko (Keiko Kitagawa), l'une des anciennes amies de Sakura, se marie et tous deux se remémorent les moments passés avec Sakura.",
    'actors': ['Shun Oguri', 'Keiko Kitagawa', 'Minami Hamabe'],
  },
  {
    'title': 'Inception',
    'posterLink': 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRRhJNaN0nQi5oaoWPNzCEDgc-bXdofmz6LT7GbxjoukjWSgC-p',
    'year': '2010',
    'genres': ['Science-fiction'],
    'description': "Dans un futur proche, les États-Unis ont développé ce qui est appelé le « rêve partagé », une méthode permettant d'influencer l'inconscient d'une victime pendant qu'elle rêve, donc à partir de son subconscient. Des « extracteurs » s'immiscent alors dans ce rêve, qu'ils ont préalablement modelé et qu'ils peuvent contrôler, afin d'y voler des informations sensibles stockées dans le subconscient de la cible. C'est dans cette nouvelle technique que se sont lancés Dominic Cobb et sa femme, Mal. Ensemble, ils ont exploré les possibilités de cette technique et l'ont améliorée, leur permettant d'emboîter les rêves les uns dans les autres, accentuant la confusion et donc diminuant la méfiance de la victime...",
    'actors': ['Leonardo DiCaprio', 'Joseph Gordon-Levitt', 'Elliot Page'],
  },
];
