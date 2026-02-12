-- m88kp4u5N8eGbN7f

CREATE TABLE plat (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
name VARCHAR(90) NOT NULL,
description TEXT,
recette TEXT,
image TEXT
);

CREATE TABLE ingredient (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(90) NOT NULL
);

CREATE TABLE ingredient_plat (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    plat_id INT NOT NULL,
    ingredient_id INT NOT NULL,
    quantite DECIMAL(6,2) NOT NULL,
    unite VARCHAR(10),
    FOREIGN KEY (plat_id) REFERENCES plat(id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredient(id),
    UNIQUE (plat_id, ingredient_id)
);


/* =========================
   1) INGREDIENTS (uniques)
   ========================= */

INSERT INTO ingredient (name) VALUES
('Reblochon'),
('Pomme de terre'),
('Oignon'),
('Lardons'),
('Beurre'),
('Poivre'),
('Oeuf'),
('Sucre'),
('Beurre doux'),
('Farine'),
('Pépites de chocolat'),
('Sucre vanillé'),
('Levure chimique'),
('Sel'),
('Tête d''ail'),
('Poireau'),
('Riz'),
('Feuille de laurier'),
('Noix de muscade'),
('Portobello'),
('Curcuma en poudre'),
('Crème épaisse'),
('Filet de saumon avec peau'),
('Bouillon de légumes'),
('Vinaigre balsamique blanc ou de riz'),
('Grenailles'),
('Carotte'),
('Fromage à la grecque'),
('Yaourt à la grecque'),
('Cuisse de poulet'),
('Citron'),
('Huile d''olive'),
('Tomates semi-séchées'),
('Orzo'),
('Amandes effilées'),
('Paprika en poudre'),
('Épinards'),
('Copeaux de grana padano AOP'),
('Thon en boîte au naturel'),
('Fromage frais'),
('Echalote'),
('Ciboulette'),
('Jaune d''oeuf'),
('Comté jeune ou comté râpé'),
('Pancetta'),
('Herbes de Provence'),
('Champignons de Paris'),
('Riz spécial risotto'),
('Vin blanc'),
('Fond de légumes'),
('Crème fraîche épaisse'),
('Parmesan'),
('Muscade moulue'),
('Pommes de terre à purée (très farineuse)'),
('Huile de noisettes'),
('Noisettes émondées'),
('Chocolat praliné'),
('Lait concentré sucré'),
('Farine T45 ou idéale'),
('Eau tiède'),
('Sucre en poudre'),
('Levure chimique ou levure boulangère déshydratée'),
('Farine à pain de campagne'),
('Levure fraîche boulangère'),
('Levure boulangère déshydratée'),
('Huile de tournesol'),
('Chocolat'),
('Corn flakes'),
('Pâte longue'),
('Pecorino'),
('Lait'),
('Sucre glace'),
('Beurre fondu'),
('Glace vanille'),
('Pomme'),
('Chorizo'),
('Maïzena'),
('Fromage râpé'),
('Yaourt nature'),
('Chocolat noir'),
('Lait entier'),
('Gruyère râpé'),
('Dés de jambon'),
('Olives noires'),
('Pâte feuilletée'),
('Persil'),
('Courgette'),
('Blanc(s) de poireau(x)'),
('Eau'),
('Légume(s) (cube)'),
('Crème fraîche liquide entière'),
('Arôme vanille'),
('Pain');

INSERT INTO plat (name, description, recette, image) VALUES
-- TARTIFLETTE 1 --
("Tartiflette Savoyarde", "Un plat savoyard gourmand à base de pommes de terre, lardons, oignons et reblochon fondant, parfait pour un repas réconfortant.", 
"1| Dans une grande casserole d'eau bouillante salée, cuire les pommes de terre préalablement épluchées. Égoutter et réserver une fois qu'elles sont bien cuites, c'est-à-dire lorsque l'on peut y enfoncer une lame de couteau sans qu'elles ne se cassent pour autant (environ 15 minutes de cuisson).
2| Pendant que cuisent les pommes de terre, faire fondre une noix de beurre dans une poêle et faire revenir les oignons détaillés vivement pendant quelques minutes puis à feu doux. Lorsqu'ils sont translucides, verser le vin blanc, et cuire jusqu'à ce que l'alcool soit évaporé et les oignons imbibés. Réserver.
3| Répartir la moitié des oignons confits dans le fond d'un plat allant au four, ainsi que les lardons revenus à la poêle et épongés de leur excédent de gras. Disposer les pommes de terre découpées en rondelles dessus, puis répartir le reste d'oignons et de lardons.
4| Choisir un reblochon au lait cru de couleur jaune-orangée. Gratter la croûte au couteau pour la nettoyer, puis couper le fromage en deux. Couper chaque moitié horizontalement et déposer les quatre morceaux sur les oignons, croûte vers le haut. Poivrer légèrement mais ne pas saler.
5| Cuire environ 30 minutes à 180 °C jusqu'à ce que la tartiflette soit bien dorée, le fromage parfaitement fondu. En fin de cuisson, mettre le four en position grill pour dorer la tartiflette.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/Tartiflette.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L1RhcnRpZmxldHRlLnBuZyIsImlhdCI6MTc2ODkxNjk5NiwiZXhwIjoxOTI2NTk2OTk2fQ.vWKsyVuCjMcTOBIksG76IdARBZRs6rh5bDJYfzmxN_Y"),
-- COOKIES 2 --
("Cookies", "Ces cookies maison ultra tendres avec de belles pépites de chocolat feront l'unanimité auprès des enfants comme des adultes. La recette est facile à réaliser et vous obtiendrez des biscuits moelleux et réconfortants en seulement 8 à 10 minutes de cuisson. Un vrai moment de gourmandise à partager à l'heure du goûter.", 
"1| Laissez ramollir le beurre à température ambiante. Dans un saladier, malaxez-le avec le sucre. 
2| Ajoutez l'oeuf et éventuellement le sucre vanillé. 
3| Versez progressivement la farine, la levure chimique, le sel et les pépites de chocolat. Mélangez bien. 
4| Beurrez une plaque allant au four ou recouvrez-la d'une plaque de silicone. À l'aide de deux cuillères à soupe ou simplement avec les mains, formez des noix de pâte en les espaçant car elles s'étaleront à la cuisson. 
5| Pour finir, faites cuire 8 à 10 minutes à 180°C soit thermostat 6. Il faut les sortir dès que les contours commencent à brunir.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/Cookies.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L0Nvb2tpZXMucG5nIiwiaWF0IjoxNzY4OTE3MDE1LCJleHAiOjE5MjY1OTcwMTV9.4wsiRAppuJf2Tyo9ZKuQHg7zD99uZKHCP_GYzstE_Kg"),
-- Saumon à la Normande 3 --
("Saumon à la normande et fondue de poireaux",
"Succombez à ce délicieux filet de saumon à la normande, sublimé par une sauce crémeuse à la noix de muscade. Cela ne vous rappelle-t-il pas ces repas conviviaux en famille, où les plats simples se transforment en festin ? Laissez-vous emporter par ce plat qui honore la tradition normande.",
"1| Préparer.
Préparez le bouillon avec de l’eau chaude.
Ciselez l’ail et l’oignon. Coupez le poireau en deux dans l'épaisseur, lavez-le bien, puis coupez-le en demi-lunes.
2| Cuire le riz
Rincez bien le riz pour en ôter l’amidon. Égouttez-le.
Dans une casserole, faites fondre une noix de beurre à feu moyen-vif. Faites-y revenir l’oignon 1-2 min. Ajoutez le riz et le curcuma. Faites revenir 1 min en remuant.
Ajoutez le bouillon, le laurier, du sel et du poivre. Couvrez et faites cuire à feu doux 12-15 min, ou jusqu’à absorption complète du bouillon. Remuez.
CONSEIL: Ajoutez un peu d'eau si le riz accroche et n'est pas cuit.
3| Faire la fondue de poireaux
Faites fondre une noix de beurre dans une poêle à feu moyen. Faites-y revenir le poireau 5-7 min, ou jusqu’à ce qu'il ramollisse.
Ajoutez la moitié de l’ail et de la crème. Salez, poivrez. Faites cuire 2-4 min à feu moyen-doux, ou jusqu'à ce que la sauce réduise, puis réservez à couvert.
4| Cuire le poisson.
À feu moyen, ajoutez le filet de saumon à la poêle, côté peau. Faites-le revenir 6-8 min à couvert sans le retourner, ou jusqu'à ce que sa chair soit opaque à cœur.
Déglacez avec le vinaigre balsamique blanc (ou du vin blanc si vous en avez) et le reste de crème. Grattez les sucs de cuisson.
Râpez un peu de noix de muscade, salez, poivrez, puis faites réchauffer 1-2 min, ou jusqu'à ce que la sauce ait une consistance nappante.
5| Servir.
Servez la fondue de poireaux et les portobellos dans les assiettes. Placez le saumon par-dessus.
Nappez de sauce. Servez le riz à côté dans un bol ou à l’emporte-pièce.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/Saumon.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L1NhdW1vbi5wbmciLCJpYXQiOjE3Njg5MTcwNDYsImV4cCI6MTkyNjU5NzA0Nn0.pVROSXD0bkpgrpiX3DvuprP_ZXqOhnPY0-1XdbqbwXU"
),
-- Poulet rôtie 4 --
("Cuisse de poulet rôtie",
"Les arômes du poulet rôti se propageant dans l’air vous font saliver d’avance ? Et bien, nous allons faire des heureux avec cette recette one pot de poulet et légumes rôtis garnis de fromage à la grecque et arrosés de sauce au yaourt. Préparez les ingrédients en un rien de temps et « oubliez-les » au four, jusqu’au service ! Il n’y a plus qu’à attendre avec impatience l’heure du repas…",
"1| Préparer.
Préchauffez le four à 230°C (210°C chaleur tournante).
Coupez les grosses grenailles en 4 ou 6 morceaux de taille égale. Coupez l’oignon en 8 quartiers.
Épluchez et coupez les carottes en morceaux de 1½ cm.
Faites deux entailles sur les cuisses de poulet (une au niveau du haut de cuisse et l'autre sur le pilon). Salez-les.
CONSEIL : Entailler la cuisse de poulet permet qu'elle cuise plus rapidement.
2| Mélanger.
Placez les grenailles, l’oignon, les carottes et les gousses d'ail non pelées dans un grand plat à four. Arrosez-les d’huile d’olive, salez et poivrez. Mélangez.
Placez les cuisses de poulet par-dessus, côté peau vers le haut. Arrosez-les avec un filet d'huile d'olive, puis salez et poivrez.
Ajoutez 2 cs d'eau par personne dans le plat.
LE SAVIEZ-VOUS ? Cuire la gousse au four dans sa peau s'appelle de l'ail en chemise !
3| Enfourner.
Enfournez le tout 35-50 min, ou jusqu'à ce que le poulet soit doré à l'extérieur, plus du tout rosé à cœur et que les légumes soient cuits.
Retournez les cuisses de poulet à mi-cuisson pour que la peau soit grillée.
Les pommes de terre sont cuites lorsque la pointe d'un couteau y rentre facilement.
4| Faire la sauce.
Pendant ce temps, coupez le citron en quartiers.
Émiettez le fromage à la grecque.
Effeuillez et ciselez le persil.
Dans un bol, mélangez le yaourt avec la moitié du persil (gardez le reste pour le dressage). Pressez quelques gouttes de citron par-dessus (selon votre goût). Salez, poivrez et mélangez.
5| Écraser l'ail.
Une fois le poulet cuit, sortez le plat à four et écrasez les gousses d'ail afin d'en faire sortir la pulpe. Mélangez-la aux légumes.
Pensez à bien retirer la peau de l'ail du plat !
6| Servir.
Servez le poulet et les légumes rôtis dans les assiettes.
Saupoudrez de fromage à la grecque et du reste de persil.
Présentez la sauce ainsi que les quartiers de citron restants à côté.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/Poulet.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L1BvdWxldC5wbmciLCJpYXQiOjE3Njg5MTcwNzgsImV4cCI6MTkyNjU5NzA3OH0.sjPPsaJRpU5j4fVfoO5Mg3OZeoIjiLXS88Ry5jNCBe8"
),
-- Orzo 5 --
("Orzo aux épinards",
"Avec ce plat, nous vous emmenons en voyage en Italie ! L'orzo ressemble à du riz, mais c'est en fait une pâte servie aujourd'hui avec du grana padano, le petit frère du célèbre parmesan. Ce fromage a un temps de maturation plus court et est donc légèrement plus doux au goût. Le fromage utilisé dans ce plat contient de la présure animale.",
"1| Préparer.
Préparez le bouillon avec de l'eau chaude.
Ciselez finement l’oignon et l’ail.
Coupez les tomates séchées en morceaux (dosez-les selon votre goût car elles ont un goût concentré et puissant).
2| Cuire l'orzo.
Dans une casserole, faites revenir le beurre avec l’oignon et l’ail 2 min à feu doux.
Ajoutez l’orzo et faites cuire 1 min de plus en remuant.
Ajoutez le bouillon et faites cuire le tout 10-12 min à feu doux et à couvert. Remuez souvent.
Ajoutez un peu d’eau si l’orzo s’assèche.
3| Torréfier les amandes.
Pendant ce temps, faites torréfier les amandes effilées dans un wok ou une sauteuse à sec et à feu moyen jusqu’à ce qu’elles commencent à dorer.
Réservez-les hors du wok.
4| Cuire les épinards.
Remettez le wok à feu moyen-vif et ajoutez-y un filet d'huile d'olive.
Déchirez les épinards à la main au-dessus et faites-les réduire en remuant.
Ajoutez ⅓ sachet de paprika par personne, salez et poivrez, puis faites cuire 3 min à feu moyen-vif.
5| Mélanger.
Ajoutez la moitié des copeaux de grana padano à l’orzo dans la casserole et laissez-les fondre en remuant.
Ajoutez ensuite les tomates séchées et l'orzo au wok avec les épinards et faites cuire le tout 1 min supplémentaire.
LE SAVIEZ-VOUS ? L’orzo est une variété de pâte dont le nom provient de sa forme, le mot « orzo » signifiant « orge » en italien.
6| Servir.
Disposez l’orzo dans des assiettes creuses.
Garnissez avec les amandes effilées et le reste des copeaux de grana padano.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/Orzo.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L09yem8ucG5nIiwiaWF0IjoxNzY4OTE3MDk3LCJleHAiOjE5MjY1OTcwOTd9.zPtrnI7M-qo-gpOKbWN85FbiTG4trfEGBeOx2Pi1u2M"
),
-- Rillettes de Thon 6 --
("Rillettes de thon",
"DESCRIPTION Rillettes",
"1| Installer la lame à 4 couteaux dans le bol du Compact Cook.
2| Éplucher l'échalote et la mettre dans le bol du Compact Cook.
3| Ajouter la ciboulette.
4| Lancer le programme HACHER.
5| Racler les bords avec la spatule.
6| Ajouter dans le bol le thon au naturel égoutté.
7| Lancer le programme HACHER.
8| Ajouter le fromage frais, le jus du citron, le sel, le poivre.
9| Mixer 1 minute Vitesse 6 en manuel.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/Rillettes.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L1JpbGxldHRlcy5wbmciLCJpYXQiOjE3Njg5MTcxMTUsImV4cCI6MTkyNjU5NzExNX0.OPZcc950tVSP2vIDZLE4FQppKY75boQvVaOgMQ_7S6k"
),
-- Muffins pancetta et comté 7--
("Muffins à la pancetta et comté",
"DESCRIPTION muffins",
"1| Préchauffer le four à 210°C
2| Peser les ingrédients.
3| Positionner l'axe et le disque pour râper/trancher côté râper (accessoires en option). Fermer avec le couvercle spécial pour râper et trancher.
4| Lancer le programme 1 (RAPER-TRANCHER) et râper le comté. Si tout le fromage est râpé avant la fin du programme 1, faire un appui long sur le bouton central pour ré-initialiser l'appareil et annuler le programme. Réservez.
5| Dans le bol vide, placer la lame à 4 couteaux.
6| Ajouter tous les ingrédients sauf la pancetta et le comté et lancer le programme 24 (PATES A TARTE).
7| Racler les bords 1 à 2 fois pendant le programme.
8| A 30 secondes de la fin du programme, ajouter le comté par l'ouverture sur le couvercle.
9| Disposer les tranches de Pancetta au fond de chacun des moules à muffin et verser par dessus dans chaque moule la préparation au Fromage.
10| Enfourner à 210°C pendant 15 à 20 minutes selon la taille des moules.
11| Servir tièdes.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/Muffin.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L011ZmZpbi5wbmciLCJpYXQiOjE3Njg5MTcxMzQsImV4cCI6MTkyNjU5NzEzNH0.t7Su7uiJLzCf73uCxhOo2cfGyiv6DhcWfop7QsnI-hg"
),
-- Risotto Champignons et courgettes 8--
("Risotto champignons et courgettes",
"DESCRIPTION risotto",
"1| Installer la lame à 4 couteaux.
2| Ajouter l'échalote, les champignons de Paris et 1 courgette coupée en morceaux dans le bol du Compact Cook.
3| Lancer le programme Hacher.
4| Positionner la pale de mélange dans le bol.
5| Racler les parois du bol avec la spatule.
6| Ajouter le beurre dans le bol et lancer le programme 11 (RISOTTO), en modifiant la température à 120°C.
7| Au premier bip sonore, retirer la pale de mélange et installer le Fouet.
8| Ajouter 250g de riz spécial risotto et 100g de vin blanc ou d'eau et refermer le couvercle pour relancer le programme.
9| Après le deuxième bip sonore, ajouter 550g d'eau, 1 c. à soupe de fond de légumes ou le bouillon de légumes, le sel et le poivre refermer le couvercle pour relancer le programme.
10| A la fin de la cuisson, ajouter 2 c. à soupe de crème Fraîche épaisse et 2 c. à soupe de parmesan dans le Compact Cook.
11| Mélanger 30 secondes à vitesse 2 en mode Manuel.
12| Réserver pendant 10 min avant de servir.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/Risotto.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L1Jpc290dG8ucG5nIiwiaWF0IjoxNzY4OTE3MTUzLCJleHAiOjE5MjY1OTcxNTN9.eTjzBCya8HldXNC4YQqs60E92A1zCEbsgyFnFYqoKXA"
),
-- Purée lisse 9--
("Purée Lisse",
"DESCRIPTION purée",
"1| Peser vos ingrédients.
2| Éplucher les pommes de terre et les rincer.
3| Les découper en morceaux de 1cm environ (important pour une cuisson uniforme et optimale).
4| Positionner la pale de mélange dans le bol du Compact Cook et y ajouter les morceaux de pomme de terre, le lait, l'eau, le sel, le poivre la muscade et le beurre.
5| Fermer le couvercle et bien laisser le capuchon du couvercle ouvert pour éviter les débordements.
6| Lancer le programme 12 (PUREE LISSE).
7| Au premier bip sonore, ouvrir le couvercle et donner un coup de spatule pour bien mélanger les morceaux de pomme de terre dans le lait.
8| Bien racler le fond du bol avec la spatule.
9| Refermer le couvercle pour relancer le programme, et fermer le capuchon du couvercle.
10| Au deuxième bip sonore, retirer la pale de mélange à l'aide d'un chiffon pour éviter les brûlures, et positionner le Fouet dans le bol.
11| Refermer le couvercle pour relancer le programme.
12| A la fin du programme, la purée est prête à être dégustée.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/PureeLisse.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L1B1cmVlTGlzc2UucG5nIiwiaWF0IjoxNzY4OTE3MTY5LCJleHAiOjE5MjY1OTcxNjl9.GU9jk-LbdfqSTCOMmJCIzCzjZHrTdMCAK7WY_Rn-p3c"
),
-- Pâte à pizza express 10--
("Pâte à pizza express",
"DESCRIPTION pizza",
"1| Installer la lame à 4 couteaux dans le bol du Compact Cook.
2| Ajouter dans le bol la levure et 200g d'eau tiède.
3| Lancer le programme 23 (PATE A PAIN ET PIZZA).
4| Après le bip sonore, ajouter la farine, le sel, le sucre et l'huile d'olive dans le bol du Compact Cook. Refermer le couvercle.
5| Une fois le programme terminé, laisser la pâte reposer 10 à 15 minutes dans le bol du Compact Cook, couverte d'un torchon, le temps de préchauffer le four à 250°C et de préparer les ingrédients pour garnir la pizza.
6| Déposer la pâte sur un plan de travail fariné.
7| Faire une boule, puis étaler la pâte de préférence à la main. Pour faire 2 pizzas moyennes, diviser la pâte en 2 boules puis les étaler.
8| Garnir la ou les pizza(s) selon vos goûts, avec par exemple une base de coulis de tomates (voir recette P.39 et 52), puis les ingrédients de votre choix.
9| Enfourner 12 min à 240°C.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/Pizza.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L1BpenphLnBuZyIsImlhdCI6MTc2ODkxNzE4NCwiZXhwIjoxOTI2NTk3MTg0fQ.NLR3aKzi06RN28P--o2ZhM300ChXJkUiMjZBcELo8EU"
),
-- Pain de Campagne 11--
("Pain de campagne",
"DESCRIPTION pain campagne",
"1| Peser les ingrédients.
2| Positionner la lame à 4 couteaux dans le bol et y ajouter l'eau et la levure émiettée.
3| Lancer le programme 23 (PATE A PAIN ET PIZZA).
4| Au bip sonore, verser les ingrédients restants dans le bol et fermer le couvercle.
5| Une fois le programme terminé, retirer la lame à 4 couteaux
6| Sortir la pâte sur un plan de travail fariné. Former une boule, la placer dans un saladier et la recouvrir d'un torchon humide. La laisser reposer 2 heures dans un endroit chaud.
7| Dégazer la pâte en y enfonçant les poings et en la repliant sur elle-même. Lui donner la forme d'une boule rentrée à l'intérieur.
8| Déposer la pâte sur une plaque de four avec du papier sulfurisé.
9| Laisser lever 30 minutes près du four.
10| Préchauffer votre four à 240°C avec un verre d'eau à l'intérieur.
11| Entailler votre boule avec un couteau pointu en dessinant un quadrillage.
12| Enfourner 30 minutes à 240°C puis baisser à 200°C pendant 15 minutes.
13| Surveiller la cuisson : il faut que la croûte soit bien brune. Éteindre le four et laisser le pain 10 minutes dans le four porte ouverte.
14| Laisser refroidir sur la plaque.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/PainCampagne.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L1BhaW5DYW1wYWduZS5wbmciLCJpYXQiOjE3Njg5MTcyMDgsImV4cCI6MTkyNjU5NzIwOH0.Zc-YaMRp9ei1cGNhEc0x5Pdk4xbqfSvpysCoBbuphqA"
),
-- Pâte à tartiner 12--
("Pâte à Tartiner Chocolat Noisettes",
"DESCRIPTION pâte à tartiner",
"1| Positionner la lame à 4 couteaux dans le bol du Compact Cook.
2| Mettre les noisettes dans le bol.
3| Mixez Vitesse 10 pendant 20 secondes en mode manuel.
4| Racler les bords avec la spatule puis mixer de nouveau 20 secondes à Vitesse 10.
5| Racler de nouveau les bords et mixer encore 20 secondes vitesse 10.
6| Ajouter le chocolat noir et le chocolat praliné coupés en morceaux, la boite de lait concentré sucré, l'huile de noisette, et la pincée de sel.
7| Lancer le programme 18 (FONDRE).
8| Verser la pâte à tartiner dans un bocal et consommez dans le mois.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/PateTartiner.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L1BhdGVUYXJ0aW5lci5wbmciLCJpYXQiOjE3Njg5MTczMDYsImV4cCI6MTkyNjU5NzMwNn0.TUAvpCCvKZ3tRbVJnezpLGWm1tzqWhLU81s5skuuV-Y"
),
-- Roses des Sables 13--
("Roses des sables",
"Pas plus de 10 minutes de votre temps pour ces roses des sables ! Cette recette au goût d’enfance retrouvée est mon grand coup de coeur pour ces fêtes de fin d'année ou tout simplement pour se faire plaisir !",
"1| Placez 200 g de chocolat en morceaux dans le bol du Thermomix. Faites fondre 5 minutes/50°C/vitesse 1. Raclez les parois pour faire tomber au fond les morceaux de chocolat les plus vaillants qui se seront accrochés au bord pour échapper à leur sort et reprogrammez 1 minute/50°C/vitesse 1.
2| Ajoutez 70 g de corn flakes et mélangez 20 secondes vitesse 2.
3| À l'aide de deux cuillères à café, déposez de petits tas de préparation bien bombés sur une plaque recouverte d'une feuille guitare, ou à défaut, de papier cuisson. Laissez les roses des sables prendre à température ambiante (comptez environ 2h) ou au frigo, si vous êtes pressés (dans ce cas là, 30 min suffiront !).", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/Rose.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L1Jvc2UucG5nIiwiaWF0IjoxNzY4OTE3MzIyLCJleHAiOjE5MjY1OTczMjJ9.7oqJHD-xO7txc4TDU5KtVxIobyVtV8KIaZjpqaqOR-k"
),
-- Pâtes à la Carbonara 14--
("Pâtes à la carbonara",
"Voici la vraie recette des pâtes carbonara comme en Italie ! Les pâtes carbonara ne contiennent qu'une sauce à base de jaune d'œufs et de pecorino, détendue par un peu de bouillon de cuisson, et de la pancetta (ou guanciale).",
"1| Préparation de la pancetta — Couper la pancetta en allumettes en retirant au maximum le gras et râper le pecorino. Faire revenir la pancetta dans un peu d'huile d'olive afin de la dorer légèrement.
2| Cuisson des pâtes — Faire cuire les pâtes dans une casserole d'eau bouillante salée en suivant les indications de l'emballage.
3| Préparation de la sauce — Battre les jaunes d’œufs en y incorporant le pecorino râpé et le poivre. Détendre la sauce en ajoutant 2/3 louchettes d'eau de cuisson des pâtes afin de la rendre plus fluide.
4| Mélange des pâtes et de la sauce — Égoutter les pâtes, les replacer dans la casserole, ajouter la sauce et la pancetta puis bien mélanger. Ajuster l’assaisonnement si nécessaire.
5| Service — Parsemer de pecorino râpé et servir aussitôt.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/Carbonara.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L0NhcmJvbmFyYS5wbmciLCJpYXQiOjE3Njg5MTczNDIsImV4cCI6MTkyNjU5NzM0Mn0.ecR2oDGLcSwTBQsXOILgK5BFoC2A2MT3K7_Jmditedk"
),
-- Crêpes 15--
("Crêpes",
"Cette recette facile de crêpes se prépare en quelques minutes seulement. Grâce à sa quantité d'œufs, la pâte ne nécessite aucun temps de repos et peut être cuite immédiatement.",
"1| Mettez la farine dans un saladier avec le sel et le sucre.
2| Faites un puits au milieu et versez-y les œufs.
3| Commencez à mélanger doucement. Quand le mélange devient épais, ajoutez le lait froid petit à petit.
4| Quand tout le lait est mélangé, la pâte doit être assez fluide. Si elle vous paraît trop épaisse, rajoutez un peu de lait. Ajoutez ensuite le beurre fondu refroidi, mélangez bien.
5| Faites cuire les crêpes dans une poêle chaude (par précaution légèrement huilée si votre poêle n'est pas anti-adhésive). Versez une petite louche de pâte dans la poêle, faites un mouvement de rotation pour répartir la pâte sur toute la surface. Quand le tour de la crêpe se colore en roux clair, il est temps de la retourner.
6| Laissez cuire environ une minute de ce côté et la crêpe est prête.
7| Pour finir
Répétez jusqu'à épuisement de la pâte.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/Crepe.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L0NyZXBlLnBuZyIsImlhdCI6MTc2ODkxNzM2OCwiZXhwIjoxOTI2NTk3MzY4fQ.jh6N6maqKtoSYon2p2Chxs5nSDHbXnVKpfiH4EhCaxI"
),
-- MilkShake 16--
("Milkshake à la vanille",
"Un plaisir simple, préparé en quelques secondes pour le plaisir de tous les gourmands. Fraîcheur, onctuosité, douceur, vos enfants vous en redemanderont. Le milkshake à la vanille dans votre robot Thermomix, une recette gagnante !",
"1| Dans le bol du Thermomix, mettez le lait et les boules de glace vanille puis mixez 1 min en vitesse 6. Servez immédiatement.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/Milkshake.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L01pbGtzaGFrZS5wbmciLCJpYXQiOjE3Njg5MTc0MTksImV4cCI6MTkyNjU5NzQxOX0.rfcbSI_K0PghtSpXri__6nMGQEEIqqPUO668TpuCKXE"
),
-- Crumble aux Pommes 17--
("Crumble aux pommes",
"Découvrez ma très gourmande recette de crumble aux pommes caramélisées à l'ancienne ! Facile et économique, ce dessert de grand-mère est à servir chaud.", 
"1| Préparation des pommes – Éplucher 5 à 6 pommes, les répartir dans un plat beurré.
2| Préparation de la pâte à crumble – Préparer la pâte en mélangeant la farine avec le sucre et le beurre partiellement fondu.
3| Montage du crumble – Parsemer la pâte sur les pommes.
4| Cuisson – Puis enfourner 30 minutes à 180°C.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/Crumble.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L0NydW1ibGUucG5nIiwiaWF0IjoxNzY4OTE3NDM1LCJleHAiOjE5MjY1OTc0MzV9.lnuA14DGcqblv1heaw8Pbr-XN2Bs0_HQDYQX5GQKe6Y"
),
-- Craquelés au Chocolat 18--
("Craquelés au chocolat",
"Les Craquelés au chocolat appelés Crinkles aux USA sont de petits gâteaux parfaits pour le goûter des petits (et des grands…). Croustillants à l’extérieur avec leur petite croûte sucrée, hyper moelleux à l’intérieur, et en prime d’une simplicité enfantine, que demander de plus !", 
"1| Mettre 200 grammes de chocolat noir dans le Thermomix et pulvériser 10 sec/vitesse 9.
2| Ajouter 50 grammes de beurre dans le Thermomix et chauffer 2 min/50°C/vitesse 2.
3| Ajouter 2 œufs et 100 grammes de sucre en poudre dans le Thermomix. Mélanger 30 sec/vitesse 4-
4| Ajouter 1 pincée de sel, 220 grammes de farine et 1 sachet de levure chimique dans le Thermomix. Mélanger 20 sec/vitesse 5.
5| Transvaser le contenu du Thermomix dans un récipient puis réserver au frigo, couvert d'un film plastique pendant 02 h 00 min.
6| Préchauffer le four à 180°C.
7| Former de petites boules avec la pâte. Les placer sur un papier cuisson sur une plaque de four.
8| Mettre 20 grammes de sucre glace à répartir sur les boules.
9| Mettre dans le four pendant 10 min à 180°C. Ajuster la cuisson de quelques minutes en fonction de votre four.
10| Laissez refroidir sur la plaque avant de déguster.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/Craquele.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L0NyYXF1ZWxlLnBuZyIsImlhdCI6MTc2ODkxNzQ3NCwiZXhwIjoxOTI2NTk3NDc0fQ.LZnX8vjoe5OqUkSowCIagjX_lTjQ5BydqRXC7GKnXPk"
),
-- Gâteau au yaourt 19--
("Gâteau au yaourt moelleux",
"Découvrez la recette du gâteau au yaourt. Dessert préféré des enfants, ce classique des premiers essais des pâtissiers en herbe, à petit prix, est parfait pour un brunch ou un goûter.", 
"1| Allumer le four thermostat 5-6 (180°C). Beurrer un moule rond.
2| Verser le yaourt dans un saladier et ajouter dans l'ordre en mélangeant bien avec une cuillère en bois : les sucres, les œufs un à un, la farine, la levure, le sel, l'huile.
3| Mettre la préparation dans le moule beurré et faire cuire 35 minutes. Laisser refroidir et démouler.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/GateauYaourt.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L0dhdGVhdVlhb3VydC5wbmciLCJpYXQiOjE3Njg5MTc0OTEsImV4cCI6MTkyNjU5NzQ5MX0.RdLVXT-axDKbVd_OtYfHfGjGLtDm_xS4FF3eo8xRhqI"
),
-- Gâteau au chocolat moelleux 20--
("Gâteau au chocolat moelleux",
"Cette recette de Pierre Hermé de gâteau au chocolat ultra-moelleux est excellente. Une recette de chef très facile qui vous garantit une texture fondante. Le gâteau est parfaitement dosé en chocolat noir et il n'y a que très peu d'ingrédients.", 
"1| Préchauffer le four à 180°C. Faire fondre le chocolat et le beurre au bain-marie. Dans un saladier, battre les œufs avec le sucre jusqu'à ce que le mélange mousse et blanchisse.
2| Incorporer le mélange chocolat/beurre puis la farine. Une fois la pâte homogène, la verser dans un moule beurré et fariné de 24/25 cm de diamètre. Faire cuire 25 minutes environ.
3| Pour finir – Il faut ensuite attendre que le gâteau soit à température ambiante pour servir. Bon appétit.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/GateauChocolat.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L0dhdGVhdUNob2NvbGF0LnBuZyIsImlhdCI6MTc2ODkxNzUwNSwiZXhwIjoxOTI2NTk3NTA1fQ.19ZWbuQWYRQ3fzbZ1VjILu6V90pFdf8_6-7AnEW8Oaw"
),
-- Soupe de légumes 21--
("Soupe de légumes",
"Envie d’une soupe bien chaude et onctueuse ? Rien de mieux qu’un velouté de légumes pour se réchauffer et se réconforter du froid. Une recette toute simple avec le Thermomix, des carottes, une courgette, des pommes de terre, un blanc de poireau, un oignon, un cube de légumes, de l’huile d’olive, du sel, du poivre et place à la préparation de votre dîner !",
"1| Épluchez et coupez l’oignon en 2 puis coupez en morceaux les carottes et les pommes de terre. Lavez et coupez en morceaux la courgette et le blanc de poireau.
2| Mettez, dans le bol du Thermomix, l'oignon et mixez 5 sec en vitesse 5.
3| Ajoutez les carottes, la courgette, les pommes de terre, le blanc de poireau, l’eau, le cube de légumes, l’huile d’olive, salez et poivrez et programmez 25 min à 100°C en vitesse 1.
4| Mixez 1 min en vitesse 10 puis servez chaud.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/Soupe.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L1NvdXBlLnBuZyIsImlhdCI6MTc2ODkxNzUxOCwiZXhwIjoxOTI2NTk3NTE4fQ.ohzrG97o71YWziPdM8EFGkPfOYE-Ol-QXvu6AtgoASU"
),
-- Mousse au Chocolat 22--
("Mousse au chocolat",
"Mousse au chocolat DESCRIPTION",
"1| Installer le fouet dans le bol du Compact Cook.
2| Mettre les blancs d’œufs et une pincée de sel dans le bol.
3| Conserver les jaunes dans un récipient à part.
4| Lancer le programme 19 « Îles flottantes ».
5| Débarrasser les blancs en neige dans un plat tapissé de papier absorbant à l’aide de la spatule et réserver.
6| Laver le bol du Compact Cook.
7| Installer la pale de mélange dans le bol propre.
8| Ajouter le chocolat noir cassé en morceaux et le lait.
9| Lancer le programme 18 « Fondre ».
10| Deux minutes avant la fin du programme, vérifier qu’il ne reste pas de morceaux de chocolat collés aux parois du bol et les rabattre si nécessaire.
11| À la fin du programme, ajouter les jaunes d’œufs dans le bol.
12| Mélanger 30 secondes vitesse 3.
13| Incorporer délicatement les blancs en neige à la préparation à l’aide d’une spatule.
14| Répartir la mousse dans des ramequins.
15| Placer au réfrigérateur pendant au moins 2 heures avant de servir.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/MousseChocolat.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L01vdXNzZUNob2NvbGF0LnBuZyIsImlhdCI6MTc2ODkxNzUzMywiZXhwIjoxOTI2NTk3NTMzfQ.0OOc3RuQSvfLKzYi8XShUuH461xCtWIseZK9EKasvJw"
),
-- Cake aux Olives 23--
("Cake aux olives",
"Les cakes, c’est la base de la cuisine du quotidien. Ce cake aux olives Thermomix est une idée recette pour un apéritif, une entrée ou même un pique-nique.",
"1| Préchauffez votre four à 200°C.
2| Dans le bol du Thermomix, mettez la farine, la levure, les œufs, l'huile de tournesol, le lait, salez et poivrez puis programmez 30 secondes en vitesse 6.
3| Ajoutez le fromage râpé, les olives et les dés de jambon puis mélangez 2 min en vitesse 2 sens inverse.
4| Transvasez dans un moule à cake beurré et fariné puis enfournez 45 min à 200°C.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/CakeOlive.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L0Nha2VPbGl2ZS5wbmciLCJpYXQiOjE3Njg5MTc1NDcsImV4cCI6MTkyNjU5NzU0N30.8Z2_ApW096QymOHLpBfYXSzRZXJrLBTjf_orCaLTJwE"
),
-- Cake au Chorizo 24--
("Cake au chorizo",
"Le cake au chorizo au Thermomix est absolument délicieux. Moelleux et savoureux, il se prépare en quelques secondes, dans le bol de votre Thermomix, avant de cuire et de dorer au four.",
"1| Préchauffez le four sur th.6 (180°C).
2| Versez la farine, la fécule, la levure, les œufs, le lait et l’huile dans le bol du Thermomix. Mixez 30 sec, vitesse 4.
3| Coupez le chorizo en petits dés. Ajoutez-le dans le bol du Thermomix. Incorporez également le fromage râpé. Mélangez le tout, en sens inverse, pendant 30 sec, vitesse 2.
4| Beurrez un moule à cake (ou recouvrez-le de papier cuisson). Versez la préparation dans le moule. Puis enfournez et faites cuire pendant 40 à 45 minutes. Testez la cuisson en plantant la pointe d’un couteau au milieu du cake, s’il est cuit, la lame doit en ressortir propre.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/CakeChorizo.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L0Nha2VDaG9yaXpvLnBuZyIsImlhdCI6MTc2ODkxNzU2MSwiZXhwIjoxOTI2NTk3NTYxfQ.RMDolIZHccZHexaFlF5Jd57N1yH3Qq3Hs985ytp2W_c"
),
-- Rouleaux feuilletés saucisse 25--
("Rouleaux feuilletés saucisse",
"Un reste de pâte feuilletée de la veille ? Une petite boîte de saucisses apéro dans le placard ? On ajoute une touche de moutarde, et voilà un truc vite fait (et vite grignoté) quand les amis débarquent à l'heure de l'apéro !",
"1| Égouttez les petites saucisses. Coupez-les en morceaux de 2 ou 3 cm.
2| Étalez la pâte feuilletée sur le plan de travail, coupez-y des bandes de 5 ou 6 cm de long et de 2 cm de large.
3| Tartinez les bandes avec un peu de moutarde à l'ancienne. Placez un morceau de saucisse à un bout et roulez le tout. Badigeonnez les rouleaux avec de l'œuf battu.
4| Placez-les sur la plaque du four recouverte de papier cuisson et enfournez pour +/- 15 minutes à 180°C.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/RouleSaucisse.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L1JvdWxlU2F1Y2lzc2UucG5nIiwiaWF0IjoxNzY4OTE3NTcxLCJleHAiOjE5MjY1OTc1NzF9.PdZsU4B00B_1rU22lS04vdSNiCV7qhTk30d0qZAaC1M"
),
-- Galette de pommes de terre 26--
("Galettes de pommes de terre",
"Une recette au Thermomix que tout le monde appréciera, les petits comme les grands. Des pommes de terre, un oignon, du persil, des œufs, de la farine, des aromates et c’est tout !",
"1| Épluchez et coupez en morceaux en gros morceaux les pommes de terre. Pelez et coupez en 2 l’oignon.
2| Dans le bol du robot Thermomix, mettez les pommes de terre, l’oignon, le persil, l’œuf, le jaune d’œuf, la farine, salez et poivrez puis mixez 30 secondes en vitesse 5.
3| Transvasez la préparation dans un saladier puis façonnez de petites galettes bien tassées.
4| Dans une poêle chaude huilée, faites cuire sur feu moyen les galettes de pommes de terre puis retourner à mi-cuisson. Placez-les sur du papier cuisson jusqu’au moment de servir.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/Galette.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L0dhbGV0dGUucG5nIiwiaWF0IjoxNzY4OTE3NTg2LCJleHAiOjE5MjY1OTc1ODZ9.9J1Ju8p-qUrF0jr9Jq2hR0spjqilWCBYdoRg0UCBlrI"
),
-- Pain 27--
("Pain",
"DESCRIPTION pain",
"1| Pour obtenir une croûte croustillante, vous pouvez placer le pain congelé dans un four préchauffé à 200°C pendant 5 à 10 minutes. Cette méthode décongèle le pain à l'aide de l'air chaud, un processus appelé convection.
2| Quand la baguette est rassie, il suffit de la passer rapidement sous l'eau pour l'humecter et de l'enfourner à 200°C pendant 10 minutes. Cette méthode est infaillible pour ramollir le pain et lui redonner son craquant.", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/Pain.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L1BhaW4ucG5nIiwiaWF0IjoxNzY4OTE3NTk4LCJleHAiOjE5MjY1OTc1OTh9.8ccygUKZF0ReS1w-XG1eKmEKxjbG91RL9lqZnHnWIEk"
),
-- Marbré au chocolat 28 --
("Marbré au chocolat", "Voici la recette du marbré au chocolat au Thermomix, pour le plus grand plaisir des papilles sucrées. Un marbré moelleux idéal pour les enfants, à l’heure du goûter mais qui peut se manger à toute heure de la journée !",
"1| Préchauffer le four à 170°C.
2| Mettre le beurre dans le bol et chauffer 4 min 30 sec/80°C/vitesse 3.
3| Ajouter la crème et le sucre dans le bol. Mélanger 30 sec/vitesse 4.
4| Ajouter les oeufs, la farine, et la levure dans le bol. Mélanger 30 sec/vitesse 4.
5| Transvaser le contenue dans un récipient puis réserver.
6| Mettre le chocolat noir coupés en morceaux dans le bol et mélanger 4 sec/vitesse 7.
7| Chauffer 5 min/50°C/vitesse 1. Racler ensuite les parois du bol avec la spatule.
8| Ajouter la moitié de la préparation réservée dans le bol.
9| Mélanger 45 sec/vitesse 4.
10| Transvaser le contenue dans un récipient puis réserver.
11| Mettre l'arôme de vanille et remuer dans le premier récipient.
12| Beurrer un moule à cake.
13| Verser 1/3 de la préparation à la vanille dans du moule et égaliser.
14| Ajouter la moitié de la préparation au chocolat par dessus toujours en essayant d'égaliser.
15| Ajouter à nouveau 1/3 de la préparation à la vanille.
16| Verser par dessus l'autre moitié de la préparation au chocolat et complété par le dernier tiers de préparation à la vanille.
17| Mettre dans le four pendant 50 min à 170°. Vérifier la cuisson avec un couteau qui doit ressortir sec si vous le plantez dedans.
18| Réserver jusqu'à ce que cela ait refroidi. 
", "https://ciehzbotnzkdehyfsmum.supabase.co/storage/v1/object/sign/Photo%20Plat/Marbre.png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9kNTU1YmZhZi1kOTkzLTRjMDctOTU4My05ZDI1Y2RiZGY2NTAiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJQaG90byBQbGF0L01hcmJyZS5wbmciLCJpYXQiOjE3NzA0MDI3MjEsImV4cCI6MTkyODA4MjcyMX0.5_70jbZeXZVAuX4g8zoaI0XDZcdilRsjwp9k717k2AQ")
;

/* ========================= 2) INGREDIENT_PLAT (plat_id, ingredient_id, quantite, unite)=========================
*/

/* 1 - Tartiflette */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(1, (SELECT id FROM ingredient WHERE name='Reblochon' LIMIT 1), 1, 'pièce'),
(1, (SELECT id FROM ingredient WHERE name='Pomme de terre' LIMIT 1), 1, 'kg'),
(1, (SELECT id FROM ingredient WHERE name='Oignon' LIMIT 1), 500, 'g'),
(1, (SELECT id FROM ingredient WHERE name='Lardons' LIMIT 1), 200, 'g'),
(1, (SELECT id FROM ingredient WHERE name='Vin blanc' LIMIT 1), 15, 'cl'),
(1, (SELECT id FROM ingredient WHERE name='Beurre' LIMIT 1), 1, 'noix'),
(1, (SELECT id FROM ingredient WHERE name='Poivre' LIMIT 1), 1, 'pincée');

/* 2 - Cookies */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(2, (SELECT id FROM ingredient WHERE name='Oeuf' LIMIT 1), 1, 'pièce'),
(2, (SELECT id FROM ingredient WHERE name='Sucre' LIMIT 1), 85, 'g'),
(2, (SELECT id FROM ingredient WHERE name='Beurre doux' LIMIT 1), 85, 'g'),
(2, (SELECT id FROM ingredient WHERE name='Farine' LIMIT 1), 150, 'g'),
(2, (SELECT id FROM ingredient WHERE name='Pépites de chocolat' LIMIT 1), 100, 'g'),
(2, (SELECT id FROM ingredient WHERE name='Sucre vanillé' LIMIT 1), 1, 'sachet'),
(2, (SELECT id FROM ingredient WHERE name='Levure chimique' LIMIT 1), 1, 'c à c'),
(2, (SELECT id FROM ingredient WHERE name='Sel' LIMIT 1), 0.5, 'c à c');

/* 3 - Saumon normand */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(3, (SELECT id FROM ingredient WHERE name='Tête d''ail' LIMIT 1), 1, 'pièce'),
(3, (SELECT id FROM ingredient WHERE name='Poireau' LIMIT 1), 1, 'pièce'),
(3, (SELECT id FROM ingredient WHERE name='Riz' LIMIT 1), 150, 'g'),
(3, (SELECT id FROM ingredient WHERE name='Feuille de laurier' LIMIT 1), 1, 'pièce'),
(3, (SELECT id FROM ingredient WHERE name='Noix de muscade' LIMIT 1), 10, 'pincée'),
(3, (SELECT id FROM ingredient WHERE name='Oignon' LIMIT 1), 1, 'pièce'),
(3, (SELECT id FROM ingredient WHERE name='Portobello' LIMIT 1), 2, 'pièce'),
(3, (SELECT id FROM ingredient WHERE name='Curcuma en poudre' LIMIT 1), 0.5, 'sachet'),
(3, (SELECT id FROM ingredient WHERE name='Crème épaisse' LIMIT 1), 100, 'g'),
(3, (SELECT id FROM ingredient WHERE name='Filet de saumon avec peau' LIMIT 1), 2, 'pièce'),
(3, (SELECT id FROM ingredient WHERE name='Bouillon de légumes' LIMIT 1), 400, 'ml'),
(3, (SELECT id FROM ingredient WHERE name='Vinaigre balsamique blanc ou de riz' LIMIT 1), 1, 'cc'),
(3, (SELECT id FROM ingredient WHERE name='Beurre' LIMIT 1), 4, 'cs');

/* 4 - Poulet rôti */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(4, (SELECT id FROM ingredient WHERE name='Grenailles' LIMIT 1), 500, 'g'),
(4, (SELECT id FROM ingredient WHERE name='Carotte' LIMIT 1), 1.5, 'pièce'),
(4, (SELECT id FROM ingredient WHERE name='Tête d''ail' LIMIT 1), 2, 'pièce'),
(4, (SELECT id FROM ingredient WHERE name='Fromage à la grecque' LIMIT 1), 75, 'g'),
(4, (SELECT id FROM ingredient WHERE name='Yaourt à la grecque' LIMIT 1), 60, 'g'),
(4, (SELECT id FROM ingredient WHERE name='Oignon' LIMIT 1), 1, 'pièce'),
(4, (SELECT id FROM ingredient WHERE name='Cuisse de poulet' LIMIT 1), 2, 'pièce'),
(4, (SELECT id FROM ingredient WHERE name='Citron' LIMIT 1), 0.5, 'pièce'),
(4, (SELECT id FROM ingredient WHERE name='Persil' LIMIT 1), 0.5, 'sachet'),
(4, (SELECT id FROM ingredient WHERE name='Huile d''olive' LIMIT 1), 2, 'cs');

/* 5 - Orzo */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(5, (SELECT id FROM ingredient WHERE name='Oignon' LIMIT 1), 1, 'pièce'),
(5, (SELECT id FROM ingredient WHERE name='Tête d''ail' LIMIT 1), 2, 'pièce'),
(5, (SELECT id FROM ingredient WHERE name='Tomates semi-séchées' LIMIT 1), 100, 'g'),
(5, (SELECT id FROM ingredient WHERE name='Orzo' LIMIT 1), 150, 'g'),
(5, (SELECT id FROM ingredient WHERE name='Amandes effilées' LIMIT 1), 1, 'sachet'),
(5, (SELECT id FROM ingredient WHERE name='Paprika en poudre' LIMIT 1), 0.5, 'sachet'),
(5, (SELECT id FROM ingredient WHERE name='Épinards' LIMIT 1), 1, 'sachet'),
(5, (SELECT id FROM ingredient WHERE name='Copeaux de grana padano AOP' LIMIT 1), 40, 'g'),
(5, (SELECT id FROM ingredient WHERE name='Bouillon de légumes' LIMIT 1), 350, 'ml'),
(5, (SELECT id FROM ingredient WHERE name='Beurre' LIMIT 1), 0.5, 'cs'),
(5, (SELECT id FROM ingredient WHERE name='Huile d''olive' LIMIT 1), 1, 'cs');

/* 6 - Rillettes de thon */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(6, (SELECT id FROM ingredient WHERE name='Thon en boîte au naturel' LIMIT 1), 240, 'g'),
(6, (SELECT id FROM ingredient WHERE name='Fromage frais' LIMIT 1), 150, 'g'),
(6, (SELECT id FROM ingredient WHERE name='Echalote' LIMIT 1), 1, 'pièce'),
(6, (SELECT id FROM ingredient WHERE name='Citron' LIMIT 1), 1, 'pièce'),
(6, (SELECT id FROM ingredient WHERE name='Ciboulette' LIMIT 1), 20, 'brins');

/* 7 - Muffins pancetta/comté */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(7, (SELECT id FROM ingredient WHERE name='Oeuf' LIMIT 1), 2, 'pièce'),
(7, (SELECT id FROM ingredient WHERE name='Jaune d''oeuf' LIMIT 1), 2, 'pièce'),
(7, (SELECT id FROM ingredient WHERE name='Farine' LIMIT 1), 200, 'g'),
(7, (SELECT id FROM ingredient WHERE name='Comté jeune ou comté râpé' LIMIT 1), 100, 'g'),
(7, (SELECT id FROM ingredient WHERE name='Pancetta' LIMIT 1), 120, 'g'),
(7, (SELECT id FROM ingredient WHERE name='Herbes de Provence' LIMIT 1), 0.5, 'c à café'),
(7, (SELECT id FROM ingredient WHERE name='Lait' LIMIT 1), 200, 'ml'),
(7, (SELECT id FROM ingredient WHERE name='Huile d''olive' LIMIT 1), 25, 'ml'),
(7, (SELECT id FROM ingredient WHERE name='Levure chimique' LIMIT 1), 0.5, 'sachet');

/* 8 - Risotto */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(8, (SELECT id FROM ingredient WHERE name='Echalote' LIMIT 1), 1, 'pièce'),
(8, (SELECT id FROM ingredient WHERE name='Beurre' LIMIT 1), 20, 'g'),
(8, (SELECT id FROM ingredient WHERE name='Champignons de Paris' LIMIT 1), 80, 'g'),
(8, (SELECT id FROM ingredient WHERE name='Courgette' LIMIT 1), 1, 'pièce'),
(8, (SELECT id FROM ingredient WHERE name='Riz spécial risotto' LIMIT 1), 250, 'g'),
(8, (SELECT id FROM ingredient WHERE name='Vin blanc' LIMIT 1), 100, 'g'),
(8, (SELECT id FROM ingredient WHERE name='Eau' LIMIT 1), 550, 'g'),
(8, (SELECT id FROM ingredient WHERE name='Fond de légumes' LIMIT 1), 1, 'cube'),
(8, (SELECT id FROM ingredient WHERE name='Sel' LIMIT 1), 1, 'c à café'),
(8, (SELECT id FROM ingredient WHERE name='Poivre' LIMIT 1), 1, 'pincée'),
(8, (SELECT id FROM ingredient WHERE name='Crème fraîche épaisse' LIMIT 1), 2, 'cs'),
(8, (SELECT id FROM ingredient WHERE name='Parmesan' LIMIT 1), 2, 'cs');

/* 9 - Purée lisse */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(9, (SELECT id FROM ingredient WHERE name='Pommes de terre à purée (très farineuse)' LIMIT 1), 800, 'g'),
(9, (SELECT id FROM ingredient WHERE name='Lait' LIMIT 1), 250, 'ml'),
(9, (SELECT id FROM ingredient WHERE name='Eau' LIMIT 1), 100, 'ml'),
(9, (SELECT id FROM ingredient WHERE name='Sel' LIMIT 1), 1, 'c à café'),
(9, (SELECT id FROM ingredient WHERE name='Poivre' LIMIT 1), 0.5, 'c à café'),
(9, (SELECT id FROM ingredient WHERE name='Muscade moulue' LIMIT 1), 1, 'pincée'),
(9, (SELECT id FROM ingredient WHERE name='Beurre' LIMIT 1), 30, 'g');

/* 10 - Pâte à pizza */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(10, (SELECT id FROM ingredient WHERE name='Farine T45 ou idéale' LIMIT 1), 400, 'g'),
(10, (SELECT id FROM ingredient WHERE name='Huile d''olive' LIMIT 1), 40, 'g'),
(10, (SELECT id FROM ingredient WHERE name='Sel' LIMIT 1), 0.5, 'c à café'),
(10, (SELECT id FROM ingredient WHERE name='Sucre en poudre' LIMIT 1), 1, 'c à s'),
(10, (SELECT id FROM ingredient WHERE name='Levure chimique ou levure boulangère déshydratée' LIMIT 1), 1, 'sachet'),
(10, (SELECT id FROM ingredient WHERE name='Eau tiède' LIMIT 1), 200, 'g');

/* 11 - Pain de campagne */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(11, (SELECT id FROM ingredient WHERE name='Farine à pain de campagne' LIMIT 1), 400, 'g'),
(11, (SELECT id FROM ingredient WHERE name='Levure fraîche boulangère' LIMIT 1), 10, 'g'),
(11, (SELECT id FROM ingredient WHERE name='Levure boulangère déshydratée' LIMIT 1), 1, 'sachet'),
(11, (SELECT id FROM ingredient WHERE name='Sucre en poudre' LIMIT 1), 1, 'c à café'),
(11, (SELECT id FROM ingredient WHERE name='Huile de tournesol' LIMIT 1), 2, 'cs'),
(11, (SELECT id FROM ingredient WHERE name='Sel' LIMIT 1), 1, 'c à café'),
(11, (SELECT id FROM ingredient WHERE name='Eau' LIMIT 1), 230, 'ml');

/* 12 - Pâte à tartiner */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(12, (SELECT id FROM ingredient WHERE name='Noisettes émondées' LIMIT 1), 50, 'g'),
(12, (SELECT id FROM ingredient WHERE name='Chocolat noir' LIMIT 1), 100, 'g'),
(12, (SELECT id FROM ingredient WHERE name='Chocolat praliné' LIMIT 1), 190, 'g'),
(12, (SELECT id FROM ingredient WHERE name='Lait concentré sucré' LIMIT 1), 1, 'boîte'),
(12, (SELECT id FROM ingredient WHERE name='Huile de noisettes' LIMIT 1), 30, 'g'),
(12, (SELECT id FROM ingredient WHERE name='Sel' LIMIT 1), 1, 'pincée');

/* 13 - Roses des sables */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(13, (SELECT id FROM ingredient WHERE name='Chocolat' LIMIT 1), 200, 'g'),
(13, (SELECT id FROM ingredient WHERE name='Corn flakes' LIMIT 1), 70, 'g');

/* 14 - Carbonara */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(14, (SELECT id FROM ingredient WHERE name='Pâte longue' LIMIT 1), 400, 'g'),
(14, (SELECT id FROM ingredient WHERE name='Pancetta' LIMIT 1), 250, 'g'),
(14, (SELECT id FROM ingredient WHERE name='Pecorino' LIMIT 1), 100, 'g'),
(14, (SELECT id FROM ingredient WHERE name='Jaune d''oeuf' LIMIT 1), 5, 'pièce');

/* 15 - Crêpes */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(15, (SELECT id FROM ingredient WHERE name='Farine' LIMIT 1), 250, 'g'),
(15, (SELECT id FROM ingredient WHERE name='Oeuf' LIMIT 1), 4, 'pièce'),
(15, (SELECT id FROM ingredient WHERE name='Lait' LIMIT 1), 0.5, 'l'),
(15, (SELECT id FROM ingredient WHERE name='Sel' LIMIT 1), 1, 'pincée'),
(15, (SELECT id FROM ingredient WHERE name='Sucre' LIMIT 1), 2, 'c à s'),
(15, (SELECT id FROM ingredient WHERE name='Beurre fondu' LIMIT 1), 50, 'g');

/* 16 - Milkshake */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(16, (SELECT id FROM ingredient WHERE name='Lait' LIMIT 1), 0.5, 'l'),
(16, (SELECT id FROM ingredient WHERE name='Glace vanille' LIMIT 1), 4, 'boules');

/* 17 - Crumble */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(17, (SELECT id FROM ingredient WHERE name='Pomme' LIMIT 1), 5, 'unité'),
(17, (SELECT id FROM ingredient WHERE name='Farine' LIMIT 1), 200, 'g'),
(17, (SELECT id FROM ingredient WHERE name='Beurre' LIMIT 1), 125, 'g'),
(17, (SELECT id FROM ingredient WHERE name='Sucre' LIMIT 1), 125, 'g');

/* 18 - Craquelés */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(18, (SELECT id FROM ingredient WHERE name='Chocolat noir' LIMIT 1), 200, 'g'),
(18, (SELECT id FROM ingredient WHERE name='Beurre' LIMIT 1), 50, 'g'),
(18, (SELECT id FROM ingredient WHERE name='Oeuf' LIMIT 1), 2, 'pièce'),
(18, (SELECT id FROM ingredient WHERE name='Sucre en poudre' LIMIT 1), 100, 'g'),
(18, (SELECT id FROM ingredient WHERE name='Sel' LIMIT 1), 1, 'pincée'),
(18, (SELECT id FROM ingredient WHERE name='Farine' LIMIT 1), 220, 'g'),
(18, (SELECT id FROM ingredient WHERE name='Levure chimique' LIMIT 1), 1, 'sachet'),
(18, (SELECT id FROM ingredient WHERE name='Sucre glace' LIMIT 1), 20, 'g');

/* 19 - Gâteau au yaourt */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(19, (SELECT id FROM ingredient WHERE name='Yaourt nature' LIMIT 1), 1, 'pot'),
(19, (SELECT id FROM ingredient WHERE name='Sucre' LIMIT 1), 2, 'pots'),
(19, (SELECT id FROM ingredient WHERE name='Sucre vanillé' LIMIT 1), 1, 'sachet'),
(19, (SELECT id FROM ingredient WHERE name='Farine' LIMIT 1), 3, 'pots'),
(19, (SELECT id FROM ingredient WHERE name='Huile d''olive' LIMIT 1), 0.5, 'pot'),
(19, (SELECT id FROM ingredient WHERE name='Oeuf' LIMIT 1), 3, 'pièce'),
(19, (SELECT id FROM ingredient WHERE name='Levure chimique' LIMIT 1), 0.5, 'sachet'),
(19, (SELECT id FROM ingredient WHERE name='Sel' LIMIT 1), 1, 'pincée');

/* 20 - Gâteau au chocolat */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(20, (SELECT id FROM ingredient WHERE name='Beurre' LIMIT 1), 250, 'g'),
(20, (SELECT id FROM ingredient WHERE name='Chocolat noir' LIMIT 1), 250, 'g'),
(20, (SELECT id FROM ingredient WHERE name='Sucre' LIMIT 1), 200, 'g'),
(20, (SELECT id FROM ingredient WHERE name='Farine' LIMIT 1), 70, 'g'),
(20, (SELECT id FROM ingredient WHERE name='Oeuf' LIMIT 1), 4, 'unité');

/* 21 - Soupe de légumes */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(21, (SELECT id FROM ingredient WHERE name='Carotte' LIMIT 1), 2, 'pièce'),
(21, (SELECT id FROM ingredient WHERE name='Courgette' LIMIT 1), 1, 'pièce'),
(21, (SELECT id FROM ingredient WHERE name='Pomme de terre' LIMIT 1), 2, 'pièce'),
(21, (SELECT id FROM ingredient WHERE name='Blanc(s) de poireau(x)' LIMIT 1), 1, 'pièce'),
(21, (SELECT id FROM ingredient WHERE name='Oignon' LIMIT 1), 1, 'pièce'),
(21, (SELECT id FROM ingredient WHERE name='Eau' LIMIT 1), 400, 'ml'),
(21, (SELECT id FROM ingredient WHERE name='Légume(s) (cube)' LIMIT 1), 1, 'cube'),
(21, (SELECT id FROM ingredient WHERE name='Huile d''olive' LIMIT 1), 1, 'cs');

/* 22 - Mousse au chocolat */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(22, (SELECT id FROM ingredient WHERE name='Oeuf' LIMIT 1), 6, 'pièce'),
(22, (SELECT id FROM ingredient WHERE name='Sel' LIMIT 1), 1, 'pincée'),
(22, (SELECT id FROM ingredient WHERE name='Sucre en poudre' LIMIT 1), 50, 'g'),
(22, (SELECT id FROM ingredient WHERE name='Chocolat noir' LIMIT 1), 205, 'g'),
(22, (SELECT id FROM ingredient WHERE name='Lait entier' LIMIT 1), 60, 'g');

/* 23 - Cake olives/jambon/gruyère */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(23, (SELECT id FROM ingredient WHERE name='Farine' LIMIT 1), 200, 'g'),
(23, (SELECT id FROM ingredient WHERE name='Levure chimique' LIMIT 1), 1, 'paquet'),
(23, (SELECT id FROM ingredient WHERE name='Oeuf' LIMIT 1), 3, 'pièce'),
(23, (SELECT id FROM ingredient WHERE name='Lait' LIMIT 1), 100, 'g'),
(23, (SELECT id FROM ingredient WHERE name='Gruyère râpé' LIMIT 1), 100, 'g'),
(23, (SELECT id FROM ingredient WHERE name='Dés de jambon' LIMIT 1), 200, 'g'),
(23, (SELECT id FROM ingredient WHERE name='Olives noires' LIMIT 1), 150, 'g'),
(23, (SELECT id FROM ingredient WHERE name='Huile de tournesol' LIMIT 1), 100, 'g');

/* 24 - Cake chorizo */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(24, (SELECT id FROM ingredient WHERE name='Chorizo' LIMIT 1), 200, 'g'),
(24, (SELECT id FROM ingredient WHERE name='Farine' LIMIT 1), 120, 'g'),
(24, (SELECT id FROM ingredient WHERE name='Maïzena' LIMIT 1), 40, 'g'),
(24, (SELECT id FROM ingredient WHERE name='Levure chimique' LIMIT 1), 1, 'sachet'),
(24, (SELECT id FROM ingredient WHERE name='Oeuf' LIMIT 1), 4, 'pièce'),
(24, (SELECT id FROM ingredient WHERE name='Lait' LIMIT 1), 100, 'g'),
(24, (SELECT id FROM ingredient WHERE name='Huile d''olive' LIMIT 1), 2, 'cs'),
(24, (SELECT id FROM ingredient WHERE name='Fromage râpé' LIMIT 1), 150, 'g');

/* 25 - Rouleaux feuilletés */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(25, (SELECT id FROM ingredient WHERE name='Pâte feuilletée' LIMIT 1), 1, 'pièce'),
(25, (SELECT id FROM ingredient WHERE name='Jaune d''oeuf' LIMIT 1), 1, 'pièce');

/* 26 - Galettes pommes de terre */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(26, (SELECT id FROM ingredient WHERE name='Pomme de terre' LIMIT 1), 1, 'kg'),
(26, (SELECT id FROM ingredient WHERE name='Oignon' LIMIT 1), 1, 'pièce'),
(26, (SELECT id FROM ingredient WHERE name='Persil' LIMIT 1), 3, 'branche'),
(26, (SELECT id FROM ingredient WHERE name='Oeuf' LIMIT 1), 1, 'pièce'),
(26, (SELECT id FROM ingredient WHERE name='Jaune d''oeuf' LIMIT 1), 1, 'pièce'),
(26, (SELECT id FROM ingredient WHERE name='Farine' LIMIT 1), 80, 'g');

/* 27 - Pain (décongélation) */
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(27, (SELECT id FROM ingredient WHERE name='Pain' LIMIT 1), 1, 'pièce');

-- 28 - Marbré chocolat
INSERT INTO ingredient_plat (plat_id, ingredient_id, quantite, unite) VALUES
(28, (SELECT id FROM ingredient WHERE name='Beurre' LIMIT 1), 120, 'g'),
(28, (SELECT id FROM ingredient WHERE name='Crème fraîche liquide entière' LIMIT 1), 120, 'g'),
(28, (SELECT id FROM ingredient WHERE name='Sucre en poudre' LIMIT 1), 200, 'g'),
(28, (SELECT id FROM ingredient WHERE name='Oeuf' LIMIT 1), 4, 'pièce'),
(28, (SELECT id FROM ingredient WHERE name='Farine' LIMIT 1), 220, 'g'),
(28, (SELECT id FROM ingredient WHERE name='Levure chimique' LIMIT 1), 1, 'sachet'),
(28, (SELECT id FROM ingredient WHERE name='Chocolat noir' LIMIT 1), 100, 'g'),
(28, (SELECT id FROM ingredient WHERE name='Arôme vanille' LIMIT 1), 1, 'cs');
