--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

-- Started on 2020-12-10 14:04:45

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2839 (class 0 OID 432419)
-- Dependencies: 203
-- Data for Name: book_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (1, 'François-Régis Gaudry', 'On va déguster l''Italie', 10, 'Comment se déroule le repas à l’italienne ?

Quelle est la véritable histoire de la pizza ?

Léonard de Vinci était-il végétarien ?

Les gnocchis se dégustent-ils aussi en dessert ?

Quelles sont les 35 façons de commander un café italien ?

En abordant près de 350 sujets, 100 recettes iconiques, tous les produits emblématiques de la gastronomie italienne, des portraits de personnages illustres, des centaines de cartes, tableaux, adresses, tours de main, anecdotes croustillantes... Gaudry & ses amis proposent une encyclopédie désordonnée dans laquelle se plonger ou simplement picorer pour savourer l’Italie du Nord au Sud ! Dans un inventaire décalé, plein d’humour, foisonnant d’illustrations, ce sont tous les savoirs et les saveurs du formidable patrimoine gastronomique de nos voisins italiens qu’ils nous invitent à découvrir.');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (2, 'Laurent Mariotte', 'Mieux manger toute l''année - Mes 365 recettes, mes conseils, mes astuces zéro gaspi', 6, 'Retrouvez Laurent Mariotte avec un nouvel almanach pour toujours mieux manger tout au long de l''année 2021 : découvrez ses 365 recettes simples et accessibles pour toutes les occasions, et tous ses conseils pour choisir des produits naturels, sains et de saison, adopter les bons réflexes de consommation et bien sûr mettre de la gourmandise dans sa cuisine !

Mieux manger toute l''année - millésime 2021 avec Laurent Mariotte c''est toujours 365 jours / 365 recettes, mais aussi des focus sur les produits de saison mois par mois, des astuces pour s''initier aux basiques du fait maison, des conseils anti-gaspillages, des coups de coeur et coups de gueule du journaliste.
Mieux manger toute l''année 2021, c''est des recettes simples et rapides au quotidien, 52 grands classiques incontournables à retrouver pour chaque semaine de l''année, des idées de recettes zéro gaspi qui permettent de recycler les surplus d''une préparation ou les restes de la veillle, mais aussi des recettes de chefs invités par le plus populaire des journalistes culinaires.
Le livre indispensable pour bien manger et se nourrir de produits sains, à dévorer sans modération !');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (3, 'Cyril Lignac', 'En cuisine - 200 recettes pour tous les jours Nouvelle édition', 0, 'J’ai décidé de partager avec vous 200 recettes pour tous les jours  qui me ressemblent, faciles à réaliser chez vous. Certaines sont ancrées dans le terroir et la tradition, d’autres sont plus modernes et contemporaines, dans l’air du temps. Elles portent toutes ma griffe : mon amour de  la bonne cuisine simple pour tous les jours et celle des jours de fête.  Vous y retrouverez aussi mes petites astuces personnelles.

Dans ce livre, vous trouverez tout d’abord une sélection de recettes conviviales et innovantes pour cuisiner sur le pouce et préparer  un apéro entre amis sans perdre des heures en cuisine. Le chapitre  Cuisine fraîcheur vous livre ensuite des recettes bien-être, légères  et gourmandes, qui vous permettront de vous régaler en finesse.  Puis, dans Cuisine express, profitez de recettes rapides, faciles 
et originales pour cuisiner vite et bon au quotidien sans banalité.  Vous découvrirez enfin des desserts gourmands, des plus traditionnels  aux plus audacieux, pour vous faire plaisir sans difficulté.');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (4, 'François-Régis Gaudry', 'On va déguster : la France', 2, 'On Va Déguster, c’est l’émission gastronomique de France Inter.
C’est désormais LA bible culinaire qui croque la France par tous les bouts et tous les goûts.
Quels légumes dans les potages Choisy, Crécy et Dubarry ?
Qu’est-ce qu’un gigot bitume ?
Quelle est la différence entre une meringue française, italienne et suisse ?
Comment s’ouvre une bouteille de champagne ?
Quel est le secret de la pâtisserie tourbillon ?
D’où vient l’expression « prendre une biture » ?
En 432 pages, 350 sujets, 1 250 spécialités, 375 recettes, 260 personnages, des centaines de cartes, tableaux, adresses, tours de main, anecdotes croustillantes...
Gaudry & Ses Amis lancent un pavé dans la marmite.
Ils racontent, dans un bouillonnant désordre, les savoirs et les saveurs de notre épique patrimoine gastronomique.
1 poster inclus.');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (5, 'Simone Zanoni', 'Le confinement d''un Chef Simone Zanoni', 7, 'LE LIVRE AVEC LES RECETTES DU CONFINEMENT QUE VOUS ATTENDIEZ ...

Un livre de cuisine différent des autres, souvenir des partages d''un Chef étoilé généreux et de sa famille, qui en plus de livrer leurs secrets de cuisine ont également mis leur énergie pour réaliser de succulents plats pour les enfants du personnel soignants et leur famille pendant une période éprouvante comme le Confinement .

Vous allez adorer découvrir tous les conseils du Chef et notamment sa façon BOMBA ATOMICA de cuire les pâtes !');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (6, 'Collectif', 'Le grand Larousse de l''Histoire de France', 4, 'A l’heure où la France semble s’interroger sur sa place dans le monde,
cet ouvrage entend retracer, dans un récit chronologique synthétique
et rigoureux, l’histoire plurimillénaire des peuples qui ont forgé
l’identité de cette pointe occidentale de l’Europe. De l’arrivée de l’Homo erectus sur
le sol français à la Ve République, revivez les principaux moments de notre histoire
politique, économique, sociale et culturelle. Une large place est accordée également
dans cet ouvrage aux faits de civilisation ainsi qu’à la vie quotidienne de nos ancêtres,
afin de dresser un panorama complet et vivant de notre passé.
Faisant le point des dernières recherches des historiens, Le Grand Larousse de
l’Histoire de France recense ce que nous devons à chaque période, depuis la
préhistoire jusqu’au xxie siècle.
Doté d’une riche iconographie, avec plus de 1 000 illustrations et cartes, ce
magnifique livre sur l’Histoire de France, indispensable à toute la famille, permettra
à chacun de s’instruire, tout en se distrayant.');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (7, 'Jean-Joseph Julaud', 'Pour les Nuls - : L''Histoire de France pour les Nuls, 3ed', 2, '« Un champ de ruines ! Voilà ce que risquent de devenir vos connaissances en Histoire de France si vous n’y prenez pas garde ! Mais, rassurez-vous, nous allons tout reconstruire : depuis les fondations, il y a deux millions d’années, lorsque le premier homme met le pied sur le futur territoire français, jusqu’à nos jours. Au cours de votre voyage, vous allez croiser Cro-Magnon, Clovis, Louis XIV, Napoléon, de Gaulle, tomber sous le charme d’Aliénor d’Aquitaine… De plus, cette troisième édition inclut les derniers événements historiques incontournables, comme l’élection d’Emmanuel Macron. Découvrez comment : * La Gaule est devenue la France * La Révolution a mis fin aux privilèges et comment la nuit du 4 août a fait naître un rêve * Napoléon Ier a conquis l’Europe * Les deux guerres mondiales ont profondément marqué le XXe siècle * La Ve République a vu se succéder des hommes de pouvoir de De Gaulle à Macron en passant par Mitterrand »');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (20, 'Ophélie Neiman', 'Le vin c''est pas sorcier', 5, 'Nouvelle édition, revue et augmentée du n°1 des ventes de vin depuis 2015 ! Le vin enfin expliqué et simplifié car il n''est pas réservé à une élite qui boit que les vins de bon papa ! Enrichi des vins de champagnes, du vin naturel, de cartes étendues ; il est devenu une référence. Ophélie Neiman est une joyeuse amoureuse du vin, ni oenologue, ni sommelière. Loin des spécialistes, elle à souhaitée parler du vin que l''on ouvre à table, entouré de bons amis. Elle propose une découverte agréable et -pour une fois- facile du monde vinicole. Une seule obligation: ne pas prendre cette boisson au sérieux. Boire et déguster sont deux activités bien distinctes ; il faut un peu de chaque pour une bonne soirée !');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (8, 'Collectif', 'Histoire mondiale de la France', 9, 'L''Histoire mondiale de la France a été le livre-événement de l''année 2017.
Le projet était fort et reste d''une actualité brûlante : face aux crispations identitaires qui dominent le débat public, comment défendre une conception ouverte et pluraliste de l''histoire ? Et faut-il pour cela abandonner l''objet " Histoire de France " aux récits simplificateurs ? À ces questions, les historiennes et historiens engagés dans cette aventure éditoriale ont tenté d''apporter des réponses simples et concrètes. Elles tiennent dans la forme même du livre : une histoire de France, de toute la France, en très longue durée, qui mène de la grotte Chauvet aux événements de 2015. Une histoire qui ne s''embarrasse pas plus de la question des origines que de celle de l''identité, mais prend au large le destin d''un pays qui n''existe pas séparément du monde qu''il prétend même parfois incarner tout entier.
Ce livre qui a fait date est ici proposé avec plus de 150 illustrations originales et quinze nouvelles dates (de l''empereur Julien au génocide des Tutsi, en passant par Shakespeare et le Débarquement). Dans l''esprit du projet, elles viennent enrichir la lecture complètement renouvelée et pleine de surprises de l''histoire de France qui a fait son succès populaire.
Voici donc une nouvelle version d''un livre de référence pour tous les lecteurs : en texte et en images. Elle est servie par une maquette élégante et aérée qui offre un grand confort de lecture et une bonne place aux illustrations.');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (9, 'Stéphane Bern', 'Les Records de l''histoire', 1, 'L''histoire est une source d''inspiration inépuisable. Stéphane Bern nous surprend une fois encore par son approche exploratrice des événements qui jalonnent les siècles.
Combien de temps a duré le mariage royal le plus bref ? Quelle reine de France a eu le plus grand nombre d''enfants ? Quel est le plus vieux restaurant de Paris ? Quelle est la plus grande grève qui a eu lieu en France ? Quel roi a eu le plus grand nombre de conquêtes amoureuses ? Qui est l''écrivain le plus lu au monde ?
100 records de l''Histoire : culture, politique, secrets amoureux... un vrai Guinness de l''Histoire !');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (10, 'Guillaume Picon', 'Secrets d''histoire - Intrigues à la cour de France', 8, 'Coups d’État retentissants, successions à couteaux tirés, duels, attentats, complots, empoisonnements ou tromperies… les intrigues, qu’elles soient politiques ou amoureuses, n’ont pas manqué à la cour de France !
De l’empoisonnement d’Agnès Sorel, favorite de Charles VII, à «  l’affaire du collier  » de Marie-Antoinette, en passant par l’assassinat du duc de Guise ou le divorce de Louis VII et d’Aliénor d’Aquitaine, redécouvrez les affaires et manigances les plus fascinantes de l’histoire de France. 
Grâce aux nombreuses illustrations et fac-similés, pénétrez dans les coulisses du pouvoir et laissez-vous captiver par ces récits qui, du Moyen Âge au XIXe siècle, ont fait couler de l’encre et passionné leurs contemporains… ');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (11, 'Hippolyte-Adolphe Taine', 'Les origines de la France contemporaine', 2, 'Dans Les Origines de la France contemporaine, son oeuvre majeure, entreprise au lendemain de la débâcle de 1870, Hippolyte Taine (1828-1893) s''interroge sur les causes profondes qui ont conduit la France à la défaite. Il a connu quatre régimes politiques : Restauration, monarchie de Juillet, IIe République, second Empire ; un cinquième est en gestation – république ou monarchie – depuis la journée parisienne du 4 septembre 1870. Il a traversé trois révolutions, sans compter d''innombrables journées révolutionnaires, préludes à la Commune. Dans le même temps, le pays a mis en usage quatre Constitutions.
Comment expliquer, par l''étude des révolutions survenues entre 1789 et 1804, l''état d''instabilité politique et d''inquiétude sociale dont souffre la France moderne et dans lequel Taine voit un facteur d''affaiblissement graduel ? Tel est le projet de l''enquête à laquelle il entend se livrer.
Quel est le mal ? D''où vient-il ? Le diagnostic posé – la France est malade –, la recherche des causes du mal conduit Taine à y voir avant tout un problème scientifique. Pour lui, l''histoire est un art, certes, mais d''abord une science. Scientifique, le problème est aussi de nature psychologique : il s''agit de comprendre et de tenter de modifier un état mental propre à la France qui la porte à enfanter des principes abstraits qu''elle s''obstine à vouloir faire entrer de force dans la réalité. À ce niveau, le problème atteint à une dimension politique, celle de l''État.
Par leur richesse, les Origines se prêtent à de multiples approches critiques. À la fois philosophie politique, histoire psychologique, morale sociale, l''ouvrage entraîne aussi, par sa qualité d''écriture, une critique littéraire. L''oeuvre de Taine mène enfin à une réflexion actuelle sur la démocratie. Ce n''est pas son moindre mérite.
Jean-Paul Cointet.');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (12, 'Claude Delannoy', 'Programmer en Java', 3, 'De la programmation objet en Java au développement d’applications web

Dans cet ouvrage, Claude Delannoy applique au langage Java la démarche pédagogique qui a fait le succès de ses livres sur le C et le C++. Il insiste tout particulièrement sur la bonne compréhension des concepts objet et sur l’acquisition de méthodes de programmation rigoureuses.

L’apprentissage du langage se fait en quatre étapes : apprentissage de la syntaxe de base, maîtrise de la programmation objet en Java, initiation à la programmation graphique et événementielle avec la bibliothèque Swing, introduction au développement web avec les servlets Java et les JSP.

L’ouvrage met l’accent sur les apports des versions 5 à 9 de Java Standard Edition, qui ont fait évoluer la manière de programmer en Java : programmation générique, types énumérés, annotations, streams et expressions lambda, outil JShell, Java Platform Module System (ex-projet Jigsaw), etc. Un chapitre est dédié aux Design Patterns en Java et cette 11 e édition présente les nouveautés des versions 10 à 14 de Java SE : déclaration var, variante de l’instruction switch et expression switch, écriture simpli?ée des blocs de texte (Text Blocks), etc.

Chaque notion nouvelle et chaque fonction du langage sont illustrées de programmes complets dont le code source est disponible en téléchargement sur le site www.editions-eyrolles.com.

À qui s’adresse ce livre ?

Aux étudiants de licence et de master, ainsi qu’aux élèves d’écoles d’ingénieurs.
À tout programmeur ayant déjà une expérience de la programmation (Python, PHP, C/C++, C#…) et souhaitant s’initier au langage Java.');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (19, 'Mélanie Dupuis, Anne Cazor', 'Le grand manuel du pâtissier', 1, 'Le livre qui reprend dans l''ordre toutes les techniques pour devenir un pâtissier et qui donne les clés pour inventer ses propres chefs d''oeuvres.
Un concept éditorial et graphique inédit pour chaque recette : Une infographie explicative soit de la composition, soit de la technique.
Les ingrédients en photo. Des étapes de réalisation en photo. Une grande photo pleine page de la réalisation pour rêver !
50 recettes de base : Les pâtes de base (brisée, sablée, feuilletée, à choux, levée, battue, crémée, meringuée). Les crèmes de base (pâtissière, au beurre, anglaise, chantilly, d''amandes, ganaches et mousses). La maîtrise du chocolat. L''art de transformer le sucre.
Et 70 recettes mêlant grands classiques pâtissiers et petits gâteaux : Forêt noire, fraisier, opéra, moka, tarte au citron, tarte aux fraises, vacherin, baba au rhum, etc.. Macarons, meringues, petits fours, madeleines et financiers.');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (13, 'Anne Tasso', 'Le livre de Java premier langage', 1, 'Apprendre Java en douceur
Vous avez décidé de vous initier à la programmation et souhaitez opter pour un langage largement utilisé dans le monde professionnel ? Java se révèle un choix idéal comme vous le constaterez dans ce livre conçu pour les vrais débutants en programmation.

Vous apprendrez d''abord, à travers des exemples simples en Java, à maîtriser les notions communes à tous les langages : variables, types de données, boucles et instructions conditionnelles, etc. Vous franchirez un nouveau pas en découvrant par la pratique les concepts de la programmation orientée objet (classes, objets, héritage), puis le fonctionnement des librairies graphiques AWT et Swing (fenêtres, gestion de la souris, tracé de graphiques). Cet ouvrage vous expliquera aussi comment réaliser des applications Java dotées d''interfaces graphiques conviviales grâce au logiciel libre NetBeans (version 11). Enfin, vous vous initierez au développement d''applications avec l''interface Android Studio.

Chaque chapitre est accompagné de deux types de travaux pratiques : des exercices, dont le corrigé est fourni sur l''extension web du livre, et un projet développé au fil de l''ouvrage, qui vous montrera comment combiner toutes les techniques de programmation étudiées pour construire une véritable application Java.

À qui s''adresse ce livre ?
Aux étudiants de 1er cycle universitaire (IUT, Deug...) ou d''écoles d''ingénieurs
Aux vrais débutants en programmation : passionnés d''informatique et programmeurs autodidactes, concepteurs de sites Web souhaitant aller au-delà de HTML et JavaScript, etc.
Aux enseignants et formateurs recherchant une méthode pédagogique et un support de cours pour enseigner Java à des débutants');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (14, 'Adrien Meaudre', 'Java et Spring', 3, 'Ce livre sur l''architecture d''une application Java/J2EE avec Spring s''adresse aux développeurs, aux concepteurs d''application et aux architectes logiciels. Son objectif est d''accompagner la mise en ouvre de Spring dans le développement d''une application Java/J2EE dans le respect des bonnes pratiques d''organisation des modules logiciels. Après, en introduction, le résumé des grands défis auxquels sont confrontées aujourd''hui les applications puis la présentation du monde Spring, le livre décrit et explique la construction d''une application Java/J2EE architecturée autour de Spring. Dans une première partie, l''organisation des composants métier de l''application à l''aide de Spring Framework permet de décrire les mécanismes fondamentaux de Spring ; inversion de contrôle et injection des dépendances. Par la suite, ces mêmes principes sont repris pour construire la couche d''accès aux informations avec le renfort de la solution d''ORM Hibernate. La présentation des données est développée à partir des modules Spring MVC et Spring Webflow. Finalement, Spring Security est mis en place pour sécuriser l''utilisation de l''application. Les versions retenues par l''auteur pour les modules Spring correspondent aux dernières versions officiellement disponibles au moment de l''écriture du livre dont notamment 3.0.1 pour Spring Framework et Spring MVC et 3.0.2 pour Spring Security. Les codes sources de tous les développements réalisés au fil des chapitres du livre sont disponibles en téléchargement sur le site www.editions-eni.fr.');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (15, 'Thierry Groussard, Thierry Richard, Virginie Mathivet', 'Java', 4, 'Ces deux livres offrent au lecteur un maximum d''informations sur les fondamentaux du développement Java et une mise en oeuvre de ce langage dans le domaine de l''Intelligence Artificielle. 1060 pages par nos experts. Des éléments complémentaires sont en téléchargement sur le site www.editions-eni.fr. Un livre de la collection Data Pro L''Intelligence Artificielle pour les développeurs - Concepts et implémentations en C# (2e édition) Extrait du résumé : Ce livre sur l''Intelligence Artificielle s''adresse particulièrement aux développeurs et ne nécessite pas de connaissances mathématiques approfondies. Au fil des chapitres, l''auteur présente les principales techniques d''Intelligence Artificielle et, pour chacune d''elles, les inspirations biologiques, physiques voire mathématiques, puis les différents concepts et principes (sans entrer dans les détails mathématiques), avec des exemples et figures pour chacun de ceux-ci. Les domaines d''application sont illustrés par des applications réelles et actuelles. Chaque chapitre contient un exemple d''implémentation générique, complété par une application pratique, développée en C#. Ces exemples de code étant génériques, ils sont facilement adaptables à de nombreuses applications à de nombreuses applications Java 10, sans plugin extérieur... Un livre de la collection Ressources Informatiques Java 11 - Les fondamentaux du langage (avec exercices pratiques et corrigés) Extrait du résumé : Ce livre s''adresse à tout informaticien désirant développer sous Java. Que le lecteur soit débutant ou qu''il ait déjà une première expérience avec un autre langage, il trouvera dans cet ouvrage toutes les bases nécessaires pour se familiariser rapidement avec un des langages les plus utilisés au monde. Après une présentation de la plateforme Java SE, de son installation sous Windows et Linux et de l''environnement de développement utilisé dans le cadre de l''ouvrage (Eclipse, MySQL), le lecteur étudie les bases du langage et la programmation orientée objet. Parmi la richesse de l''API Java, un focus est fait sur l''API de gestion des dates, sur les nouvelles possibilités offertes par les interfaces et sur la notion de modules...');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (16, 'Gilles Verot', 'Terrines, rillettes, saucisses & pâtés croûte', 4, 'Voici 89 recettes réalisables par tous et créées spécialement pour ce livre par Gilles et Nicolas Verot, charcutiers de père en fils, de la célèbre Maison Verot, à Paris.
Nul besoin de matériel spécifique, ni d’ingrédients obscurs pour réaliser une terrine de campagne, un pâté croûte, des boulettes, un pressé de légumes, ou même des foies gras délicieux.
Grâce à des ateliers illustrés pas à pas, Gilles et Nicolas nous transmettent les bons gestes pour maîtriser facilement les techniques de base de la charcuterie :  tailler, trancher, effilocher, mélanger, assembler une tourte…
Les recettes de ce livre, qu’ils ont toutes réalisées dans les conditions d’une cuisine à la maison, ont aussi été testées par de nombreux cuisiniers amateurs. Succès garanti !');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (17, 'Jacques Lonchamp', 'Conception d''applications en Java/JEE - 2e éd. - Principes, patterns et architectures', 2, 'Cet ouvrage s’adresse principalement aux étudiants des cycles informatiques (IUT, LP, licence deuxième et troisième années) ainsi qu’aux élèves-ingénieurs en écoles d’informatique.
La phase de conception logicielle répond aux questions « comment résout-on le problème ? comment satisfait-onles besoins ? ». Elle fait suite à la phase d’analyse antérieure qui, elle, avait posé les questions « quel est le problème ?quels sont les besoins ? ».
Ce manuel explique les méthodes de la conception orientée objets. Il détaille les patrons de conception (design patterns), les principes de conception qui les sous-tendent et les principales architectures logicielles, en particulier les architectures web. Il s’appuie sur le langage Java.
Il présente pour chaque thème abordé plusieurs exemples et rassemble 58 exercices tous corrigés, ainsi que deuxétudes de cas : JSE (Java Standard Edition) et JEE (JavaEnterprise Edition) détaillées jusqu’au code complet.');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (18, 'Cyril Lignac', 'Fait Maison - numéro 3 par Cyril Lignac', 8, 'Cyril Lignac cuisine 45 recettes salées et sucrées pour mettre encore et toujours un peu de peps dans ton quotidien. Un tian de légumes, un burger de bœuf, des endives au jambon au maroilles ou encore une superbe tarte au citron, un gâteau de Savoie ou un pop-corn caramélisé, sauce chocolat... " Tu vas te régaler en toute simplicité ! "

Pour égayer tes déjeuners et dîners, des recettes faciles et rapides, à déguster en solo, à deux, en famille ou entre amis. Avec Cyril, le fait-maison, c''est facile ! Mets ton tablier et laisse-toi guider par ses précieux conseils et ses recettes ultra-réconfortantes.');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (21, 'Cyril Lignac', 'La pâtisserie', 3, '« La pâtisserie est une affaire de tendresse maternelle. Je veux que mes gâteaux réconfortent les gens, qu''ils leur apportent de la douceur. » La pâtisserie, un condensé d''émotions… S''il s''exprime aussi bien en cuisine qu''en chocolaterie, Cyril Lignac nous ouvre ici les portes de sa pâtisserie pour mieux nous livrer son savoir-faire au cœur de notre quotidien. Avec Benoît Couvrand, grand pâtissier et complice créatif, il imagine 55 recettes sous le signe de la simplicité et de la proximité : classiques revisités, petites douceurs, gâteaux de saison… Les pâtisseries quittent leur vitrine pour embaumer les foyers des meilleurs parfums : ceux du goût, du plaisir et de la joie partagés.
Cyril Lignac, fort d''une formation complète et d''un parcours prestigieux (des cuisines d''Alain Passard au laboratoire de Pierre Hermé), est aujourd''hui à la tête de quatre restaurants (Le Quinzième, Le Chardenoux, Aux Prés, Le Bar des Prés), cinq pâtisseries et une chocolaterie. Il anime également depuis plus de dix ans des émissions culinaires, dont « Le Meilleur Pâtissier » sur M6. Après dix ans chez Fauchon en qualité de Chef Pâtissier, Benoît Couvrand s''est lancé avec Cyril Lignac dans la création de La Pâtisserie.');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (22, 'Jean Sévillia', 'Une Histoire inédite de la France en 100 cartes', 3, 'L''histoire de la France cartographiée, de la préhistoire à nos jours, et racontée par Jean Sévillia.

En cinq parties - "Les origines", "Le royaume de France", "La nation française", "Les temps modernes" et "La France aujourd''hui" - et plus de 100 cartes inédites et richement détaillées, de celle des principaux sites préhistoriques au planisphère de la francophonie actuelle, cet ouvrage novateur donne à voir, véritablement, une autre histoire de France, vivante, presque charnelle. La bataille d''Alésia, Le partage de Verdun, la France des monastères de l''an 1000 au XIIe siècle, l''art roman ou gothique, les croisades, la France de François Ier, les princiaux monuments de la Renaissance, les résidences de Louis XIV, la frontière fortifiée de Vauban, les Lumières, les minorités religieuses aux XVIIe et XVIIIe siècles, les guerres de Vendée, la France du Premier Empire, la révolution de 1830, la construction du réseau ferré au XIXe, l''alphabétisation, l''urbanisation et les langues régionales en 1900, la Grande Guerre, ses victimes, les élections législatives de 1936, celles de 1946 - après la France occupée et la libération du territoire national -, l''Algérie française, la décolonisation, les élections présidentielles de la Ve République, le réseau autoroutier, les étapes de la construction européenne, la délinquance et les violences urbaines, les familles monoparentales, les interventions militaires récentes ou encore les gilets jaunes : autant du sujets et autant de cartes, parmi beaucoup d''autres, que commente Jean Sévillia avec maestria et concision. Conjuguant plaisir de lecture et érudition, cette première Histoire inédite de la France en 100 cartes - beau livre relié cartonné, en couleurs - permet surtout de comprendre l''évolution de notre pays, d''en comprendre les faiblesses et d''en apprécier les formidables richesses.');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (23, 'Eric Anceau', 'Les élites françaises', 0, 'Les élites sont aujourd''hui rendues responsables de tout. En a-t-il toujours été ainsi ? Dans ce livre à l''approche inédite, Éric Anceau retrace, de 1720 à 2020, la grande histoire des élites françaises, de la crise de l''Ancien Régime au drame sanitaire de la Covid 19, en passant par la Révolution, la tentative napoléonienne de fusion de la France monarchique et de la France républicaine, les révolutions de 1830 et 1848, l''effondrement du régime de Napoléon III, l''Affaire Dreyfus, la montée des extrêmes dans les années 1930, la Deuxième Guerre mondiale, la refondation gaullienne et, enfin, les tensions sociales des trois dernières décennies. Fresque extraordinaire de l''histoire de France, cet ouvrage est en outre une réflexion magistrale sur la nature de la relation entre les élites et le peuple, laquelle a toujours été frappée, selon l''auteur, du sceau de la défiance.');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (24, 'Alain Dag''naud', 'Les dessous croustillants de l''Histoire de France', 5, 'Florilège érotique et confidences émoustillantes, Les Dessous croustillants de l’Histoire de France trousse un passé passionné où sexe et pouvoir s’entremêlent.
Des amours interdits d’un révolutionnaire aux gaudrioles lestes d’un futur prix Nobel, de l’exhibitionnisme d’un président du Conseil aux jeux dévergondés d’une reine autoritaire, des rendezvous clandestins d’un chef d’État aux exploits sexuels d’un prince troubadour, tout ce que vous avez voulu savoir sur la vie secrète des Grands vous est dévoilé.
Une relecture éclairante, revigorante et irrésistible de vingt-cinq siècles d’une Histoire de France inédite et sensuelle.');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (25, 'Guillaume Bourel, Marielle Chevallier, Axelle Guillausseau, Guillaume Joubert', 'Bescherelle Chronologie de l''histoire de France', 3, 'Une chronologie de l’histoire de France signée Bescherelle. Un ouvrage complet, fiable et attractif qui s’adresse à tous les curieux d’histoire.
 
Le récit de l’histoire de France, des origines à nos jours
La chronologie couvre une période allant du VIIe  siècle avant J.-C. à la très récente «  crise des gilets jaunes  ». 158  dates emblématiques sont ainsi présentées, de manière vivante et rigoureuse, permettant de revivre l’histoire de France et d’en percevoir les phénomènes majeurs.
 
Une organisation claire, une mise en page rythmée
• Au début de chaque partie, une grande frise chronologique.
• Puis au fil des doubles pages, le récit de chaque événement, en textes et en images.
• À intervalles réguliers, des dossiers sur des phénomènes clés de la période.');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (26, 'Daniel Rougé', 'Pour les Nuls - : Java Pour les Nuls 4e', 5, 'Idéal pour commencer avec Java comme premier langage !
Grâce à ce livre, vous allez rapidement écrire rapidement vos premières applets Java, sans pour autant devenir un gourou de la programmation objet. Rassurez-vous, on ne vous assommera pas avec toutes les subtilités du langage Java, mais vous posséderez rapidement les bases nécessaires pour utiliser la panoplie d''outils du parfait programmeur Java.
Cette nouvelle édition a été entirement mise à jour avec les spécifications de la dernière version du SDK Java. Intègre les nouveautés apportées par Java 8.');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (27, 'Frédéric Déléchamp', 'Java et Eclipse', 6, 'Ce livre sur Java et Eclipse s''adresse aux développeurs et étudiants en informatique. Il fait le lien entre les connaissances théoriques et pratiques en prenant appui sur le développement d''une application de gestion. De la compréhension des concepts de la POO en passant par l''analyse, le lecteur est guidé pas à pas dans la construction de l''application. Pour la partie développement qui constitue l''essentiel de l''ouvrage, les points forts sont l''exploitation d''une base de données multitables avec MySQL et JPA, l''écriture des principales classes suite à une approche génie logicielle basée sur UML, la mise en œuvre du pattern MVC, l''écriture de tests unitaires avec JUnit, et une sensibilisation à l''internationalisation d''une application. Au fur et à mesure du livre et à travers la mise en œuvre du projet, le lecteur découvrira les principes de la programmation en Java. Les collections, les lambdas, les streams, la gestion du temps et les interfaces graphiques, les étapes pratiques et les connaissances théoriques indispensables au développement d''une application professionnelle seront ainsi étudiées. L''auteur propose également différents axes d''ouverture pour aller plus loin dans sa connaissance de la programmation Java. L''environnement de développement repose sur Java 9, Eclipse 4.7 IDE for Java Developers, Xampp pour le serveur, WindowBuilder pour bâtir de belles IHM et enfin JasperReports pour l''édition des états et l''élaboration de graphiques. Au final, l''application de gestion comporte l''essentiel des fonctionnalités d''une solution professionnelle : gestion des clients, des articles et des commandes - édition et exportation des états aux principaux formats (HTML, PDF...) - production de graphiques - vues multifenêtres avec mise à jour simultanée. Des éléments complémentaires sont en téléchargement sur le site www.editions-eni.fr. Les chapitres du livre : Avant-propos - Environnement de développement - Prise en main d''Eclipse - Concepts de base de la POO - La boîte à outils de Java - La boîte à outils d''Eclipse - Présentation du projet - Analyse - Base de données MySQL - Maquettes - Connexion - Classes entités - Modèle MVC - Application multitable - Application finale Java et Eclipse - Développez une application avec Java et Eclipse (2e édition)');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (28, 'Luc Gervais', 'Apprendre la Programmation Orientée Objet avec le langage Java', 0, 'Cette troisième édition du livre s''adresse aux étudiants et aux développeurs ayant déjà une première expérience de la programmation structurée et qui sont désireux de passer à la Programmation Orientée Objet (POO) avec le langage Java, pour développer des applications portables. Après un historique de la POO et du langage Java l''auteur explique pourquoi ce type de programmation est devenu incontournable pour développer dans les environnements graphiques événementiels. Les notions d''objet, de classe et de référence sont présentées puis les fondements de la POO que sont l''encapsulation, l''héritage, le polymorphisme et l''abstraction. Les différentes étapes d''un développement objet avec les principes de modélisation UML sont exposées. L''auteur présente ensuite la machine virtuelle Java, son intérêt, sa richesse et un environnement de développement avec IntelliJ IDEA de la société JetBrains. Le lecteur découvre comment Java reproduit les principes de la POO en suivant des explications simples, des exemples concrets et en réalisant des exercices d''entraînement. Il découvre également les types de base du développement Java et leur utilisation, comment exploiter un IDE pour simplifier la saisie des programmes et les mettre au point. Les programmes d''essais sont de type console ou graphique, basés sur l''utilisation de Swing pour illustrer les communications entre objets. Quand ils sont pertinents, des parallèles sont menés avec les langages de programmation objet C++ et C#. La programmation multithread permettant l''exécution simultanée de plusieurs flux d''instructions est présentée, suivie d''une introduction aux tests unitaires tellement importants pour fiabiliser les objets. Une partie consacrée à la réflexion en Java promet quelques surprises. Enfin, le dernier chapitre est consacré aux classes anonymes et aux expressions lambda. à la fin de ce livre, le lecteur disposera de bases solides pour appréhender les puissantes API Java et réaliser des programmes objet modulaires, fiables et extensibles. Des éléments complémentaires sont en téléchargement sur le site www.editions-eni.fr.
Luc Gervais exerce depuis 30 ans la profession de développeur logiciel. Venant du monde de l''électronique, il a commencé par programmer en langage assembleur pour ensuite passer au C, C++, C# et Java. Il a animé de nombreuses formations sur différents langages de programmation aussi bien pour un public de développeurs professionnels que d''étudiants (Université de Rouen). Cette double expérience (technique et pédagogique) lui permet de répondre parfaitement aux attentes des lecteurs désireux de passer à la Programmation Orientée Objet (POO) avec le langage Java.');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (29, 'Thierry Richard, Thierry Groussard', 'Java 11 Les fondamentaux du langage', 2, 'Ce livre s''adresse à tout informaticien désirant développer sous Java. Que le lecteur soit débutant ou qu''il ait déjà une première expérience avec un autre langage, il trouvera dans cet ouvrage toutes les bases nécessaires pour se familiariser rapidement avec un des langages les plus utilisés au monde. Le premier chapitre présente la plateforme Java SE, son installation sous Windows et Linux et l’environnement de développement utilisé dans le cadre de l’ouvrage (Eclipse, MySQL). Les deux chapitres suivants abordent les bases du langage et la programmation orientée objet. Parmi la richesse de l’API Java, un focus est fait sur l’API de gestion des dates, sur les nouvelles possibilités offertes par les interfaces, sur la notion de modules. Le quatrième chapitre traite d’un sujet incontournable : les expressions lambda et les API sous-jacentes comme l’API java.util.function et l’API Stream. Le cinquième chapitre étudie le développement d''applications graphiques avec la bibliothèque Swing. Le développement d''applications client/serveur est également présenté avec l''API JDBC assurant l''accès aux bases de données relationnelles. Le déploiement étant une étape importante du succès d''une application, le dernier chapitre présente la distribution d''une application avec la solution classique des fichiers d''archives ou l''utilisation de l’outil jlink. Des éléments complémentaires sont en téléchargement sur le site www.editions-eni.fr.');
INSERT INTO public.book_entity (id, author, name, nb_copies_available, summary) VALUES (30, 'Cyrille Herby', 'Apprenez à programmer en Java', 1, 'Vous aimeriez apprendre à programmer en Java, mais vous débutez dans la programmation ?

Pas de panique ! Vous tenez dans vos mains un livre conçu pour les débutants qui souhaitent se former à Java, le langage de programmation incontournable des professionnels !

De quoi permettre d''apprendre pas à pas à développer vos premiers programmes.');


--
-- TOC entry 2843 (class 0 OID 432438)
-- Dependencies: 207
-- Data for Name: user_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.user_entity (id, email, password, username) VALUES (1, '1@user', 'password1', 'user1');
INSERT INTO public.user_entity (id, email, password, username) VALUES (2, '2@user', 'password2', 'user2');
INSERT INTO public.user_entity (id, email, password, username) VALUES (3, '3@user', 'password3', 'user3');
INSERT INTO public.user_entity (id, email, password, username) VALUES (4, '4@user', 'password4', 'user4');


--
-- TOC entry 2841 (class 0 OID 432430)
-- Dependencies: 205
-- Data for Name: loan_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (1, '2020-12-15 12:08:43', false, 1, 1);
INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (2, '2020-12-18 11:06:24', false, 2, 1);
INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (3, '2020-12-20 08:04:43', false, 3, 1);
INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (4, '2020-12-19 07:01:12', false, 4, 1);
INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (5, '2020-12-16 09:23:52', false, 5, 1);
INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (6, '2020-12-17 09:54:43', true, 6, 2);
INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (7, '2020-12-24 12:12:12', false, 7, 2);
INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (8, '2020-12-23 12:32:25', true, 8, 2);
INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (9, '2020-12-15 05:42:51', false, 9, 2);
INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (10, '2020-12-19 04:41:09', false, 10, 2);
INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (11, '2020-12-08 22:06:43', false, 11, 3);
INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (12, '2020-12-05 09:02:12', false, 12, 3);
INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (13, '2020-12-07 23:01:53', false, 13, 3);
INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (14, '2020-12-20 13:32:24', false, 14, 3);
INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (15, '2020-12-19 18:32:18', false, 15, 3);
INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (16, '2020-12-08 14:08:50', true, 1, 4);
INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (17, '2020-12-22 12:47:28', true, 16, 4);
INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (18, '2020-12-04 21:34:19', false, 9, 4);
INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (19, '2020-12-03 11:10:16', false, 11, 4);
INSERT INTO public.loan_entity (id, end_of_loaning_date, loan_extended, book_id, user_id) VALUES (20, '2020-12-21 14:02:52', false, 17, 4);


--
-- TOC entry 2849 (class 0 OID 0)
-- Dependencies: 202
-- Name: book_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.book_entity_id_seq', 30, true);


--
-- TOC entry 2850 (class 0 OID 0)
-- Dependencies: 204
-- Name: loan_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.loan_entity_id_seq', 20, true);


--
-- TOC entry 2851 (class 0 OID 0)
-- Dependencies: 206
-- Name: user_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_entity_id_seq', 4, true);


-- Completed on 2020-12-10 14:04:45

--
-- PostgreSQL database dump complete
--

