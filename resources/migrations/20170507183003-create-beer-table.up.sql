 CREATE TABLE IF NOT EXISTS beer (
  id INT AUTO_INCREMENT NOT NULL,
  name VARCHAR(100) NOT NULL UNIQUE,
  origin INT NOT NULL,
  price INT NOT NULL,
  style INT NOT NULL,
  alcohol DOUBLE NOT NULL,
  manufacturer VARCHAR(100) NOT NULL,
  country VARCHAR(100) NOT NULL,
  info VARCHAR(100) NOT NULL,
  picture VARCHAR(500) DEFAULT '/images/default.jpg',
  PRIMARY KEY (id),
  FOREIGN KEY (style) REFERENCES style(id) ON UPDATE CASCADE ON DELETE CASCADE
);
--;;
INSERT INTO beer
(id, name, origin, price, style, alcohol, manufacturer, country, info) VALUES
(1, 'Zaječarsko Svetlo', 1, 1, 9, 4.5, 'Heineken Srbija - Zaječar', 'Srbija', 'http://www.ratebeer.com/beer/zaje269arsko-svetlo-pivo/80809/'),
(2, 'Staropramen', 1, 1, 9, 5, 'Apatinska Pivara (MolsonCoors)', 'Srbija', 'http://www.ratebeer.com/beer/staropramen-lezak-premium-lager--beer-12o/3784/'),
(3, 'BIP', 1, 1, 9, 4.5, 'BIP-Beogradska Industrija Piva', 'Srbija', 'http://www.ratebeer.com/beer/bip-svetlo-pivo/12049/'),
(4, 'MB', 1, 1, 9, 4.5, 'Brauerei MB (United Serbian Breweries)', 'Srbija', 'http://www.ratebeer.com/beer/mb-pils/32621/'),
(5, 'Pils Plus', 1, 1, 9, 5, 'Heineken Srbija - Zaječar', 'Srbija', 'http://www.ratebeer.com/beer/pils-plus/33161/'),
(6, 'Jagodinsko', 1, 1, 9, 5, 'Jagodinska Pivara', 'Srbija', 'http://www.ratebeer.com/beer/jagodinsko-pivo/18617/'),
(7, 'Jelen', 1, 1, 11, 4.6, 'Apatinska Pivara (MolsonCoors)', 'Srbija', 'http://www.ratebeer.com/beer/jelen-pivo/12285/'),
(8, 'Lav', 1, 1, 11, 5, 'Carlsberg Serbia', 'Srbija', 'http://www.ratebeer.com/beer/lav-pivo/11635/'),
(9, 'Nikšićko', 1, 1, 11, 5, 'Apatinska Pivara (MolsonCoors)', 'Srbija', 'http://www.ratebeer.com/beer/niksi263ko-pivo/5991/'),
(10, 'Löwenbrau', 1, 1, 11, 5.2, 'Apatinska Pivara (MolsonCoors)', 'Srbija', 'http://www.ratebeer.com/beer/lowenbrau-original/4792/'),
(11, 'Merak', 1, 1, 11, 4.5, 'Carlsberg Serbia', 'Srbija', 'http://www.ratebeer.com/beer/merak-svetlo-pivo/116756/'),
(12, 'Apatinsko', 1, 1, 11, 4.7, 'Apatinska Pivara (MolsonCoors)', 'Srbija', 'http://www.ratebeer.com/beer/apatinsko-svetlo-pivo/33186/'),
(13, 'Valjevsko', 1, 1, 11, 4.5, 'Valjevska Pivara', 'Srbija', 'http://www.ratebeer.com/beer/valjevsko-pivo/38626/'),
(14, 'Weifert', 1, 1, 11, 5, 'Brauerei MB (United Serbian Breweries)', 'Srbija', 'http://www.ratebeer.com/beer/weifert-svetlo-pivo-2015-/331889/'),
(15, 'Carlsberg', 1, 1, 11, 5, 'Carlsberg (Serbia)', 'Srbija', 'http://www.ratebeer.com/beer/carlsberg-serbia/183136/'),
(16, 'Becks', 1, 0, 11, 4.8, 'Apatinska Pivara (MolsonCoors)', 'Srbija', 'http://www.ratebeer.com/beer/becks/703/'),
(17, 'Stella Artois', 1, 0, 11, 5.2, 'InBev Belgium', 'Belgija', 'http://www.ratebeer.com/beer/stella-artois/1478/'),
(18, 'Amstel', 1, 0, 11, 5, 'Coca-Cola HBC Srbija', 'Srbija', 'http://www.ratebeer.com/beer/amstel-lager/38/'),
(19, 'Tuborg', 1, 0, 9, 4.6, 'Carlsberg Srbija', 'Srbija', 'http://www.ratebeer.com/beer/tuborg-gron-green/3201/'),
(20, 'Lav Tamno', 1, 1, 12, 6.2, 'Carlsberg Srbija', 'Srbija', 'http://www.ratebeer.com/beer/lav-tamno/123494/'),
(21, 'Zaječarsko Tamno', 1, 1, 12, 5.2, 'Heineken Srbija - Zaječar', 'Srbija', 'http://www.ratebeer.com/beer/zaje269arsko-crno/390941/'),
(22, 'Nikšićko Tamno', 1, 1, 12, 6.2, 'Apatinska Pivara (MolsonCoors)', 'Srbija', 'http://www.ratebeer.com/beer/niksi263ko-tamno/23339/'),
(23, 'Kors Dark', 1, 0, 12, 5.5, 'Kors Mini Pivara', 'Srbija', 'http://www.ratebeer.com/beer/kors-dark/370163/'),
(24, 'Soproni Dark', 0, 1, 12, 5.2, 'Heineken Hungária/Soprony Brewery', 'Madjarska', 'http://www.ratebeer.com/beer/soproni-fekete-demon/78422/'),
(25, 'Crni Djordje', 0, 1, 12, 5, 'Banjalučka Pivara', 'BIH', 'http://www.ratebeer.com/beer/crni-272or273e-2010-/144895/'),
(27, 'Kabinet Vertigo', 1, 0, 9, 4.2, 'Kabinet Brewery', 'Srbija', 'http://www.ratebeer.com/beer/kabinet-vertigo/281850/'),
(28, 'Kum Bohemian Pilsner', 1, 0, 9, 4.5, 'Pivara Kum', 'Srbija', 'http://www.beercellar.co.nz/detail/RS00X00APN6/Kum-Bohemian-Pilsner'),
(29, 'Crow Mayer', 1, 0, 9, 5.3, 'Crow Brewery', 'Srbija', 'http://www.ratebeer.com/beer/crow-mayer/379120/'),
(30, 'Pilsner Urquell', 0, 1, 9, 4.4, 'Plzensky Prazdroj (SABMiller)', 'Češka', 'http://www.ratebeer.com/beer/pilsner-urquell/717/'),
(31, 'Swinkels', 0, 0, 9, 4.5, 'Bavaria Brouwerij (Netherlands)', 'Holandija', 'http://www.ratebeer.com/beer/swinkels-traditional-beer/27777/'),
(32, 'Delhaize 365', 0, 1, 9, 4.7, 'Champigneulles (TCB Beverages)', 'Francuska', 'http://www.ratebeer.com/beer/delhaize-365-pils-bier/75394/'),
(33, 'Radeberger', 0, 0, 9, 4.8, 'Radeberger Exportbierbrauerei (Oetker Group)', 'Nemačka', 'http://www.ratebeer.com/beer/radeberger-pilsner/8975/'),
(34, 'Krombacher', 0, 0, 9, 4.8, 'Krombacher Privatbrauerei Kreuztal', 'Nemačka', 'http://www.ratebeer.com/beer/krombacher-pils/3370/'),
(35, 'Memminger Premium', 0, 0, 9, 5.1, 'Memminger Brauerei', 'Nemačka', 'http://www.ratebeer.com/beer/memminger-premium/12911/'),
(36, 'Konig Beer', 0, 1, 9, 4.2, 'Pécsi Sörfözde (Ottakringer)', 'Madjarska', 'http://www.ratebeer.com/beer/konig-beer-hungary/137129/'),
(37, 'Heineken', 0, 0, 11, 5, 'Heineken Nederland', 'Holandija', 'http://www.ratebeer.com/beer/heineken/37/'),
(38, 'Budweiser', 0, 0, 11, 5, 'Anheuser-Busch InBev', 'SAD', 'http://www.ratebeer.com/beer/budweiser/473/'),
(39, 'Laško', 0, 1, 11, 4.9, 'Pivovarna Laško', 'Slovenija', 'http://www.ratebeer.com/beer/lasko-zlatorog/16478/'),
(40, 'Nektar', 0, 1, 11, 5, 'Banjalučka Pivara', 'BiH', 'http://www.ratebeer.com/beer/nektar-pivo/11513/'),
(41, 'Paulaner', 0, 0, 11, 5.5, 'Paulaner Brauerei (Schörghuber)', 'Nemačka', 'http://www.ratebeer.com/beer/paulaner-hefe-weissbier-hefe-weizen-55/647/'),
(42, 'Grolsch', 0, 0, 11, 5, 'Grolsche Bierbrouwerij Ned. (SABMiller)', 'Holandija', 'http://www.ratebeer.com/beer/grolsch/715/'),
(43, 'Estrella Damm', 0, 1, 11, 4.6, 'Damm', 'Spanija', 'http://www.ratebeer.com/beer/estrella-damm-46/171798/'),
(44, 'Brooklyn Lager', 0, 0, 11, 5.2, 'Brooklyn Brewery', 'SAD', 'http://www.ratebeer.com/beer/brooklyn-lager/528/'),
(45, 'Sindikat Pale lager', 1, 0, 11, 11.8, 'Pivnica Medved - Sindikat Brewery', 'Srbija', 'http://www.ratebeer.com/beer/sindikat-pale-lager/398998/'),
(46, 'Weihenstephaner Original Helles', 0, 0, 11, 5.1, 'Bayerische Staatsbrauerei Weihenstephan', 'Nemačka', 'http://www.ratebeer.com/beer/weihenstephaner-original-helles/1593/'),
(47, 'Bavaria ', 0, 1, 11, 5, 'Bavaria Brouwerij (Netherlands)', 'Holandija', 'http://www.ratebeer.com/beer/bavaria-pilsener--premium-beer/5571/'),
(48, 'Kwak', 0, 0, 7, 8.4, 'Brouwerij Bosteels', 'Belgija', 'http://www.ratebeer.com/beer/pauwel-kwak/3658/'),
(49, 'Gulden Draak Tripel', 0, 0, 7, 10.5, 'Brouwerij Van Steenberge', 'Belgija', 'http://www.ratebeer.com/beer/gulden-draak/3958/'),
(50, 'La Chouffe', 0, 0, 7, 8, 'Brasserie d’Achouffe (Duvel-Moortgat)', 'Belgija', 'http://www.ratebeer.com/beer/la-chouffe/1614/'),
(51, 'Gouden Carolus', 0, 0, 7, 8.5, 'Brouwerij Het Anker', 'Belgija', 'https://www.ratebeer.com/beer/gouden-carolus-classic/4637/'),
(52, 'Brewdog Jack Hammer', 0, 0, 2, 7.2, 'BrewDog', 'Škotska', 'https://www.ratebeer.com/beer/brewdog-jack-hammer/178585/'),
(53, 'Sierra Nevada Torpedo', 0, 0, 2, 7.2, 'Sierra Nevada Brewing Company', 'SAD', 'http://www.ratebeer.com/beer/sierra-nevada-torpedo-extra-ipa/59261/'),
(54, 'Thornbridge Jaipur', 0, 0, 2, 5.9, 'Thornbridge', 'Engleska', 'https://www.ratebeer.com/beer/thornbridge-jaipur/48795/'),
(55, 'Sunday IPA', 0, 1, 2, 5.5, 'Arcobräu Gräfliches Brauhaus', 'Južna Afrika', 'http://www.ratebeer.com/beer/and-union-sunday/244949/'),
(56, 'Brewdog Punk IPA', 0, 1, 2, 5.6, 'BrewDog', 'Škotska', 'https://www.ratebeer.com/beer/brewdog-punk-ipa-56/135361/'),
(57, 'Kaš Ryezen', 1, 0, 2, 6.5, 'Kaš Balkan Brewtopia / Justbeer', 'Srbija', 'https://www.ratebeer.com/beer/kas-ryezen-ipa/308825/'),
(58, 'Kabinet Vista Mikkeler', 1, 0, 2, 6, 'Kabinet Brewery', 'Srbija', 'http://www.ratebeer.com/beer/mikkeller-vista-ipa/290871/'),
(59, 'Kabinet SuperNova ', 1, 0, 2, 6.8, 'Kabinet Brewery', 'Srbija', 'https://www.ratebeer.com/beer/kabinet-supernova/287370/'),
(60, 'The Black Turtle IPA', 1, 1, 2, 8, 'The Black Turtle', 'Srbija', 'https://www.ratebeer.com/beer/the-black-turtle-indian-pale-ale/151846/'),
(61, 'RazBeerbriga Škripa', 1, 0, 2, 6, 'RazBeerbriga', 'Srbija', 'https://www.ratebeer.com/beer/razbeerbriga-skripa/421095/'),
(62, 'Južni Vepar Svarog', 1, 0, 2, 5.55, 'Južni Vepar', 'Srbija', 'https://www.ratebeer.com/beer/juzni-vepar-svarog/432030/'),
(63, 'Crow Gladiator', 1, 0, 2, 5.6, 'Crow Brewery', 'Srbija', 'https://www.ratebeer.com/beer/crow-gladiator/401508/'),
(64, 'Baltika 4', 0, 1, 12, 5.6, 'Baltika Brewery (Baltic Beverages Holding - Carlsberg)', 'Rusija', 'https://www.ratebeer.com/beer/baltika-4-originalnoe-original/10760/'),
(65, 'Baltika 7', 0, 1, 11, 5.4, 'Baltika Brewery (Baltic Beverages Holding - Carlsberg)', 'Rusija', 'https://www.ratebeer.com/beer/baltika-7-eksportnoe-export/17453/'),
(66, 'Memminger Schwarz', 0, 0, 12, 5, 'Memminger Brauerei', 'Nemačka', 'https://www.ratebeer.com/beer/memminger-lager-schwarz/43783/'),
(67, 'Augustiner Dunkel', 0, 0, 12, 5.6, 'Augustiner Dunkel', 'Nemačka', 'https://www.ratebeer.com/beer/augustiner-dunkel/9603/'),
(68, 'Paunović Weizen', 1, 1, 3, 6.5, 'Mala Pivara Paunović', 'Srbija', 'https://www.ratebeer.com/beer/paunovi263-weizen/377610/'),
(69, 'Bellegems Witbier', 0, 0, 3, 5.5, 'Brouwerij Omer Vander Ghinste (Bockor)', 'Belgija', 'https://www.ratebeer.com/beer/vander-ghinste-bellegems-wit/88832/'),
(70, 'Hoegaarden', 0, 1, 3, 4.9, 'Brouwerij Hoegaarden (InBev)', 'Belgija', 'https://www.ratebeer.com/beer/hoegaarden/399/'),
(71, 'Kozel Černy', 0, 1, 12, 3, 'Pivovar Velké Popovice (SAB Miller)', 'Češka', 'http://www.ratebeer.com/beer/kozel-cerny-dark-10o/390/'),
(72, 'Blue Moon', 0, 0, 3, 5.4, 'Coors Brewing Company (MillerCoors)', 'SAD', 'http://www.ratebeer.com/beer/blue-moon-belgian-white-ale/2228/'),
(73, 'Kabinet Wit', 1, 0, 3, 5.2, 'Kabinet Brewery', 'Srbija', 'https://www.ratebeer.com/beer/kabinet-wit/282507/'),
(74, 'John Lemon', 0, 1, 3, 5.6, 'Visibaba Brew Co.', 'Hrvatska', 'http://www.ratebeer.com/beer/visibaba-pivo-john-lemon/273800/'),
(75, 'Kabinet Plavo', 1, 0, 1, 6.2, 'Kabinet Brewery', 'Srbija', 'https://www.ratebeer.com/beer/kabinet-plavo/274229/'),
(76, 'Kabinet Pale Ale', 1, 0, 1, 4.5, 'Kabinet Brewery', 'Srbija', 'https://www.ratebeer.com/beer/kabinet-pale-ale/258169/'),
(77, 'Omer', 0, 0, 7, 8, 'Brouwerij Bockor N.V. / Brouwerij Omer Vander Ghinste ', 'Belgija', 'https://www.beeradvocate.com/beer/profile/223/53029/'),
(78, 'Ama Bionda', 0, 0, 1, 6, 'Birra Amarcord', 'Italija', 'https://www.ratebeer.com/beer/amarcord-ama-bionda/160976/'),
(79, 'Orval', 0, 0, 1, 6.2, 'Brasserie dOrval', 'Belgija', 'http://www.ratebeer.com/beer/orval/835/'),
(80, 'Tripel Karmeliet', 0, 0, 1, 8.4, 'Brouwerij Bosteels', 'Belgija', 'https://www.ratebeer.com/beer/tripel-karmeliet/5368/'),
(81, 'Leffe Blonde', 0, 1, 1, 6.6, 'InBev Belgium', 'Belgija', 'https://www.ratebeer.com/beer/leffe-blonde/2514/'),
(82, 'Grimbergen', 0, 1, 1, 6.7, 'Brouwerijen Alken-Maes (Heineken)', 'Belgija', 'http://www.ratebeer.com/beer/grimbergen-blonde/3948/'),
(83, 'Gulden Draak', 0, 0, 1, 10.5, 'Brouwerij Van Steenberge', 'Belgija', 'https://www.ratebeer.com/beer/gulden-draak/3958/'),
(84, 'Bernard ', 0, 0, 1, 4.7, 'Bernard Family Brewery', 'Češka', 'http://www.ratebeer.com/beer/bernard-jantarovy-lezak-12o--amber-lager/65141/'),
(85, 'Duvel', 0, 1, 1, 8.5, 'Duvel Moortgat', 'Belgium', 'https://www.ratebeer.com/beer/duvel/1434/'),
(86, 'Chimay blue', 0, 1, 1, 9, 'Chimay', 'Belgija', 'https://www.ratebeer.com/beer/chimay-bleue-blue--grande-reserve/53/'),
(87, 'Rochefort Trappistes 6', 0, 0, 7, 7.5, 'Brasserie Rochefort', 'Belgija', 'https://www.ratebeer.com/beer/rochefort-trappistes-6/5401/'),
(88, 'Rochefort Trappistes 8', 0, 0, 7, 9.2, 'Brasserie Rochefort', 'Belgija', 'https://www.ratebeer.com/beer/rochefort-trappistes-8/5400/'),
(89, 'The Black Turtle Belgian ', 1, 1, 1, 8, 'The Black Turtle', 'Srbija', 'https://www.ratebeer.com/beer/the-black-turtle-belgian-abbey/202864/'),
(90, 'Jacobins Kriek', 0, 0, 3, 4.5, 'Brouwerij Omer Vander Ghinste (Bockor)', 'Belgija', 'https://www.ratebeer.com/beer/jacobins-kriek/1626/'),
(91, 'Hacker - Pschorr Münchner Kellerbier', 0, 0, 10, 5.5, 'Paulaner Brauerei (Schörghuber)', 'Nemacka', 'https://www.ratebeer.com/beer/hacker-pschorr-munchner-kellerbier--anno-1417/18207/'),
(92, 'Leikeim Kellerbier', 0, 0, 10, 4.9, 'Familien-Brauhaus Leikeim', 'Nemačka', 'https://www.ratebeer.com/beer/leikeim-kellerbier/86956/'),
(93, 'Kapuziner Keller', 0, 0, 10, 5.1, 'Kulmbacher Brauerei (Schörghuber)', 'Nemačka', 'https://www.ratebeer.com/beer/kapuziner-kellerweizen/177115/'),
(94, 'Jelen Nefiltrirano', 1, 0, 10, 5.2, 'Apatinska Pivara (MolsonCoors)', 'Srbija', 'https://www.ratebeer.com/beer/jelen-nefiltrirano-pivo/425725/'),
(95, 'Krugher & Brent Svetlo Nefiltrirano ', 1, 0, 10, 4.5, 'Krugher & Brent', 'Srbija', 'https://www.ratebeer.com/beer/krugher-brent-svetlo-nefiltrirano/151857/'),
(96, 'Skull Splitter', 0, 0, 6, 8.5, 'Orkney (Sinclair Breweries)', 'Škotska', 'http://www.ratebeer.com/beer/orkney-skull-splitter-bottle/1210/'),
(98, 'Wee Heavy', 0, 0, 6, 7.4, 'Belhaven (Greene King)', 'Škotska', 'http://www.ratebeer.com/beer/belhaven-wee-heavy--90-shilling-bottle/4314/'),
(99, 'BrewDog Dogma', 0, 0, 6, 7.4, 'BrewDog', 'Škotska', 'https://www.ratebeer.com/beer/brewdog-dogma/167684/'),
(100, 'La Trappe Bockbier', 0, 0, 8, 7, 'La Trappe Trappist - Abdij O.L.V. Koningshoeven (Bavaria)', 'Holandija', 'https://www.ratebeer.com/beer/la-trappe-bockbier/39548/'),
(101, 'Paulaner Salvator', 0, 0, 8, 7.9, 'Paulaner Brauerei (Schörghuber)', 'Nemačka', 'http://www.ratebeer.com/beer/paulaner-salvator/649/'),
(102, 'Schneider TAP5', 0, 0, 8, 8.2, 'Schneider Weisse G. Schneider & Sohn GmbH', 'Nemačka', 'https://www.ratebeer.com/beer/schneider-weisse-tap-5-meine-hopfen-weisse/75466/'),
(103, 'Schneider TAP6', 0, 0, 8, 8.2, 'Schneider Weisse G. Schneider & Sohn GmbH', 'Nemačka', 'https://www.ratebeer.com/beer/schneider-weisse-tap-6-unser-aventinus/115976/'),
(104, 'Weihenstephaner Vitus', 0, 0, 8, 7.7, 'Bayerische Staatsbrauerei Weihenstephan', 'Nemačka', 'https://www.ratebeer.com/beer/weihenstephaner-vitus/70791/'),
(105, 'RazBeerbriga Black Rider ', 1, 0, 5, 5.5, 'RazBeerbriga', 'Srbija', 'https://www.ratebeer.com/beer/razbeerbriga-black-rider-american-stout/338027/'),
(106, 'Kabinet Cassius', 1, 0, 5, 6.3, 'Kabinet Brewery', 'Srbija', 'https://www.ratebeer.com/beer/kabinet-cassius-stout/295903/'),
(107, 'Tron Imperial Stout', 1, 0, 5, 5.6, 'Tron Brewery', 'Srbija', 'https://www.ratebeer.com/beer/tron-imperial-stout/364193/'),
(108, 'The Black Turtle Stout', 1, 0, 5, 5, 'The Black Turtle', 'Srbija', 'https://www.ratebeer.com/beer/the-black-turtle-stout/151847/'),
(109, 'Crow Dr Jekyll', 1, 0, 5, 3, 'Crow Brewery', 'Srbija', 'https://www.ratebeer.com/beer/crow-dr-jekyll/379123/'),
(110, 'Kabinet Porter', 1, 0, 5, 6, 'Kabinet Brewery', 'Srbija', 'https://www.ratebeer.com/beer/kabinet-porter/252159/'),
(111, 'Kruger Porter', 1, 0, 5, 5.5, 'Krugher & Brent', 'Srbija', 'http://www.ratebeer.com/beer/krugher-brent-porter/282505/'),
(112, 'Russian Imperial Stout', 0, 0, 5, 10.5, 'Stone Brewing', 'SAD', 'http://www.ratebeer.com/beer/stone-imperial-russian-stout/4315/'),
(113, 'Guinness', 0, 0, 5, 4.2, 'St. James’s Gate (Diageo)', 'Irska', 'http://www.ratebeer.com/beer/guinness-draught/1267/'),
(114, 'Double Chocholate Stout', 0, 0, 5, 5.2, 'Charles Wells', 'Engleska', 'http://www.ratebeer.com/beer/youngs-double-chocolate-stout/139/'),
(115, 'Baltika 6', 0, 0, 5, 7, 'Baltika Brewery (Baltic Beverages Holding - Carlsberg)', 'Rusija', 'https://www.ratebeer.com/beer/baltika-6-porter/6110/'),
(116, 'Ama Mora', 0, 0, 5, 9, 'Birra Amarcord', 'Italija', 'https://www.ratebeer.com/beer/amarcord-ama-mora/183803/'),
(117, 'Weihenstephaner Kristallweissbier', 0, 0, 41, 5.4, 'Bayerische Staatsbrauerei Weihenstephan', 'Nemačka', 'http://www.ratebeer.com/beer/weihenstephaner-kristall-weissbier/4584/'),
(118, 'Hacker-Pschorr Kristall Weisse', 0, 0, 41, 5.5, 'Paulaner Brauerei (Schörghuber)', 'Nemačka', 'https://www.ratebeer.com/beer/hacker-pschorr-kristall-weisse/7370/'),
(119, 'Schöfferhofer Kristallweizen', 0, 0, 41, 5, 'Binding-Brauerei (Oetker Group)', 'Nemačka', 'https://www.ratebeer.com/beer/schofferhofer-kristallweizen/10732/'),
(120, 'Paulaner Weissbier Kristallklar', 0, 0, 41, 5.2, 'Paulaner Brauerei (Schörghuber)', 'Nemačka', 'https://www.ratebeer.com/beer/paulaner-weissbier-kristallklar/6386/'),
(121, 'Memminger Kristallweizen', 0, 0, 41, 5.1, 'Memminger Brauerei', 'Namečka', 'https://www.ratebeer.com/beer/memminger-kristallweizen/43503/'),
(122, 'Erdinger Weissbier Kristallklar', 0, 0, 41, 5.3, 'Erdinger Weissbräu', 'Nemačka', 'https://www.ratebeer.com/beer/erdinger-weissbier-kristallklar/2470/'),
(123, 'Weihenstephaner Hefe Weissbier', 0, 0, 42, 5.4, 'Bayerische Staatsbrauerei Weihenstephan', 'Nemačka', 'https://www.ratebeer.com/beer/weihenstephaner-hefe-weissbier/1156/'),
(124, 'Ayinger Bräu-Weisse', 0, 0, 42, 5.1, 'Brauerei Aying', 'Nemačka', 'https://www.ratebeer.com/beer/ayinger-brau-weisse/2716/'),
(125, 'Schneider TAP4', 0, 0, 42, 6.2, 'Schneider Weisse G. Schneider & Sohn GmbH', 'Nemačka', 'https://www.ratebeer.com/beer/schneider-weisse-tap-4-mein-grunes/6212/'),
(126, 'Paulaner Hefe-Weissbier', 0, 0, 42, 5.5, 'Paulaner Brauerei (Schörghuber)', 'Nemačka', 'https://www.ratebeer.com/beer/paulaner-hefe-weissbier-hefe-weizen-55/647/'),
(127, 'Schneider Original', 0, 0, 42, 5.4, 'Schneider Weisse G. Schneider & Sohn GmbH', 'Nemačka', 'http://www.ratebeer.com/beer/schneider-weisse-original/1762/'),
(128, 'Schöfferhofer Hefeweizen', 0, 0, 42, 5, 'Binding-Brauerei (Oetker Group)', 'Nemačka', 'https://www.ratebeer.com/beer/schofferhofer-hefeweizen/10733/'),
(129, 'Erdinger Hefeweizen', 0, 0, 42, 5.3, 'Erdinger Weissbräu', 'Nemačka', 'http://www.ratebeer.com/beer/erdinger-weissbier-hefe-weizen/2468/'),
(130, 'Medved Pšenično', 1, 0, 42, 5, 'Pivnica Medved - Sindikat Brewery', 'Srbija', 'https://www.ratebeer.com/beer/medved-pseni269no/340452/'),
(131, 'The Black Turtle Weisse', 1, 0, 42, 4.6, 'The Black Turtle', 'Srbija', 'https://www.ratebeer.com/beer/the-black-turtle-weissbier/184110/'),
(132, 'RazBeerBriga Hefeweizen', 1, 0, 42, 4.3, 'RazBeerbriga', 'Srbija', 'http://www.ratebeer.com/beer/razbeerbriga-banana-republic-hefeweizen/349806/'),
(133, 'Crow Mr Hyde', 1, 0, 43, 5, 'Crow Brewery', 'Srbija', 'http://www.ratebeer.com/beer/crow-mr-hyde/396015/'),
(134, 'Ayinger Ur-Weisse', 0, 0, 43, 5.8, 'Brauerei Aying', 'Nemačka', 'http://www.ratebeer.com/beer/ayinger-ur-weisse/2719/'),
(135, 'Hacker-Pschorr Dunkel Weisse', 0, 0, 43, 5.5, 'Hacker-Pschorr Bavaria Bräu', 'Nemačka', 'http://www.ratebeer.com/beer/hacker-pschorr-bavaria-brau-dunkle-hefe-weisse/230213/'),
(136, 'Paulaner HefeDunkel', 0, 0, 43, 5.3, 'Paulaner Brauerei', 'Nemačka', 'http://www.ratebeer.com/beer/paulaner-hefeweissbier-dunkel/648/'),
(137, 'Erdinger HefeDunkel', 0, 0, 43, 5.3, 'Echterdinger Brauhaus', 'Nemačka', 'http://www.ratebeer.com/beer/erdinger-dunkel/2469/'),
(138, 'Kruger Red', 1, 1, 8, 8, 'Krugher & Brent', 'Srbija', 'http://www.ratebeer.com/beer/krugher-brent-red-beer/82723/'),
(139, 'Crow Sunshine', 1, 0, 41, 5.2, 'Crow Brewery', 'Srbija', 'http://www.ratebeer.com/beer/crow-sunshine/401507/');
