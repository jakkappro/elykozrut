// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// mine

Future updateAttractions() async {
  // Add your function code here!
  var listOfAttractions = getArrayOfAttractions();
  FFAppState().AttractionsSK = listOfAttractions;

  var listOfENAttractions = <AttractionStruct>[];
  listOfENAttractions.add(AttractionStruct(
      name: "Tourist Park",
      address: "Malinowa 2b, 43-438 Brenna, Poland",
      addressLocation: LatLng(49.721188, 18.918688),
      phoneNumber: "+48334740601",
      url: "https://turysta.brenna.org.pl/pl/park-turystyki",
      attractionIds: [0, 1, 2, 3, 4],
      description:
          "Tourist Park  it’s an entertainment and leisure centre. The central part of this facility is the modern Amphitheatre.  This is where important outdoor events are organised. There is also something for artists: outdoor sculpting workshops are organised in the park every now and then.  The Park is a perfect place for those who appreciate active leisure, because there are numerous attractions, such as a basketball court, a beach volleyball court, a leisure ground and an outdoor gym, and in winter there is also a skating rink. The leisure ground is a perfect entertainment opportunity for the whole family. In summer you can play a number of games here and use the equipment. If you’re into cycling, you can rent a bike from the bike rental in the park. You can find bikes for the whole family here, as well as helmets and bike seats for small children.  In the Park there is also a playground for children."));

  listOfENAttractions.add(AttractionStruct(
      name: "Goat Pen",
      address: "Sportowa 3, 43-438 Brenna, Poland",
      addressLocation: LatLng(49.719861, 18.921944),
      phoneNumber: "+48513422143",
      url: "http://koziazagroda.pl",
      attractionIds: [0, 1, 6, 5],
      description:
          "Goat Pen is a beautiful and unique spot on the map of the Beskid Śląski region. It is a fine example of traditional culture. The owners were first enchanted with the Vlach culture. They decided to create a place that would display whatever is best in the highlands. The restaurant building is a replica of a traditional wooden cottage from 1928 - you can try some traditional Beskid cuisine here. Connoisseurs will probably appreciate homemade delicacies, which are not to be found in any store, such as tea brews made of local herbs, blueberry marmalade or dandelion syrup. You can also take part in regional workshops: choose between cheesemaking, wool works, decorating gingerbread cookies and baking sourdough bread. Last but not least, what would the Goat Pen be without goats? Right next to the natural playground there is a pen with farm animals: goats and sheep. This place will melt the hearts of animal lovers and enthusiasts of splendid traditional cuisine.  "));

  listOfENAttractions.add(AttractionStruct(
      name: "The Beskid House of Herbs “Przytulia”",
      address: "Wyzwolenia 69, 43-438 Brenna, Poland",
      addressLocation: LatLng(49.722582, 18.912698),
      phoneNumber: "+48334000021",
      url: "https://domzielin.eu",
      attractionIds: [0, 1, 8, 6, 3, 5, 4],
      description:
          "The Beskid House of Herbs “Przytulia”  is a living museum. It’s a special place among the cultural venues in the region. The multimedia exhibition will show you all there is to know about herbs and the role they played in the everyday lives of the local people. On this occasion, you can also learn more about the history of Beskid Śląski and its inhabitants. The exhibition is divided into four sections titled: in sickness and in health, family home, in the field and in the farmstead, day in - day out. The exhibits and herbs - dried leaves and models - are here for you to see, touch and smell. Additionally, from spring to autumn you can see the most popular herbs from this region in the herbal garden around the museum. While visiting the House of Herbs, you can taste the local herbal and fruit tea, learn to distinguish and name specific herbs in the herbal garden, or take part in some regional activities, such as plucking feathers, making sauerkraut or crafting wooden toys."));

  listOfENAttractions.add(AttractionStruct(
      name: "Cross-border Herbal Garden",
      address: "Górecka 224, 43-438 Brenna, Poland",
      addressLocation: LatLng(49.727028, 18.898476),
      phoneNumber: "+48338586971",
      url: "https://turysta.brenna.org.pl/pl/ogrod-zielin-z-placem-zabaw",
      attractionIds: [0, 1, 8, 4],
      description:
          "This place was created to facilitate learning and promote entertainment by activating our senses: sight, hearing, smell, touch and even taste. The garden was designed so as to facilitate outdoor lessons and workshops or environmental classes. This is also a perfect place to explain and show physical phenomena observed in the nature. On this occasion, you can enjoy outdoor activities that will boost your dexterity and eye-hand coordination, or simply relax. This is a great opportunity for children to learn about gardening and plants. Children and youth will learn about local plant species found near the border between Poland and Slovakia. They can also see how natural motifs were used in the traditional culture and how plants are related to folk beliefs and magic rituals. This is a good place to relax with your family and friends, surrounded by lush greenery, fragrant flowers and tasty fruit and herbs. "));

  listOfENAttractions.add(AttractionStruct(
      name: "The “Konczakówka” Hunting Lodge",
      address: "Głębiec 26, 43-438 Brenna, Poland",
      addressLocation: LatLng(49.748698, 18.898081),
      phoneNumber: "+48338536496",
      url: "https://turysta.brenna.org.pl/pl/dworek-mysliwski-konczakowka",
      attractionIds: [0, 6, 5],
      description:
          "The “Konczakówka” Hunting Lodge   is one of the most precious examples of wooden architecture in the Beskid mountains. The lodge was built by Brunon Konczakowski, a wealthy merchant from Cieszyn and a hunter known in Europe for his collection of weapons.  The shape of the lodge is a reference to the Tyrolean style, which was popular in the interwar period. On the stone foundation complete with a basement there is a wooden floor and attic. The construction is made of Swiss pine and lark wood, which was imported from the Italian and Austrian Alps. Skilful craftsmen from Cieszyn managed to join the wooden beams without using nails. The intricate gallery railings and triangular gables outside, adorned with deer antlers make the lodge presentable and magnificent. Inside you can find original furniture made of Swiss pine wood as well as an Art Nouveau wood-burning stove adorned with green tiles. "));

  listOfENAttractions.add(AttractionStruct(
      name: "House of Bread",
      address: "Breńska 113, 43-436 Górki Małe, Poland",
      addressLocation: LatLng(49.7582559, 18.8664292),
      phoneNumber: "+48338539630",
      url: "http://www.chlebowachata.pl",
      attractionIds: [0, 1, 6, 5],
      description:
          "House of Bread  is in fact a true depiction of a historical village in a nutshell. Only that it’s alive. It’s often referred to as the “bread museum”. The stove is literally the heart of this place. If you opt to attend one of the special meetings, you will have the opportunity to observe the whole process of making bread. As it turns out, grain has a long way to go before it becomes part of a delicious, fragrant loaf. The place also offers live bread- and flatbread-making shows, combined with a practical workshop: threshing grain, grinding it with querns and sifting the flour. Afterwards, you can taste the freshly baked bread with butter, lard spiced with herbs or honey –  needless to say, all of the additions are homemade. But the workshops offered by the House of Bread are not limited to baking. The owners of this place will teach the younger generations - and remind the older ones -  what life used to look like in the olden days. They will show you how people used to make butter, what tools they used in the homestead, or what a beekeeper does - because, as you are about to learn, “a swarm of bees in May is worth a load of hay.”"));

  listOfENAttractions.add(AttractionStruct(
      name: "Cross-border Culture Zone",
      address: "Górki Wielkie, ul Sportowa 8, Poland",
      addressLocation: LatLng(49.774006, 18.849722),
      phoneNumber: "+48338586971",
      url: "https://turysta.brenna.org.pl/pl/transgraniczna-strefa-kultury-2",
      attractionIds: [0, 1, 2, 7, 4],
      description:
          "Cross-border Culture Zone, an unusual and innovative way to promote the cultural heritage of the cross-border area. This place includes 4 facilities: a swing for four,  the Kossak Manor, the Magic Forest and the Village of Dwarves. Children will adore the wooden castle with towers, bridges, walls and other elements combined in a spatial labyrinth, as well as carved totems resembling forest creatures. On the branches of the swing you can see lamias, phantoms and witches - all creatures from the fairy tales. This inspiration for this place was the literature of Zofia Kossak, notably her book about a mountain dwarf. It’s not a regular playground, but a magnificent place, which will stimulate children’s imagination, release the magic atmosphere and help the visitors discover legendary creatures. Because of different levels of difficulty, the facilities in the playground can be used by children of all ages. "));

  listOfENAttractions.add(AttractionStruct(
      name: "The Kossak Manor House Arts and Culture Centre",
      address: "Stary Dwór 4, 43-436 Górki Wielkie, Poland",
      addressLocation: LatLng(49.78177, 18.827916),
      phoneNumber: "+48338510351",
      url: "http://www.dworkossakow.pl",
      attractionIds: [0, 1, 7, 5],
      description:
          "The Kossak Manor House Arts and Culture Centre, the idea for this place came from the  Zofia Kossak Foundation. The facility won the 4th edition of the Beautiful Poland – 7 wonders of European funds competition, organised by the Ministry of Regional Development. In the building there are numerous multimedia devices, which you can use to see photos from the family archives or listen to the author and her daughter. On the walls you will see printouts and photo-wallpapers, which are a reference to the life and work of Zofia Kossak and her family. Apart from the exhibitions, the Zofia Kossak Foundation organised a cycle of summer events known as  Artistic Summer in the Kossak Manor. The cycle includes outdoor painting sessions, art workshops, theatre classes, sculpture or craft workshops, concerts and shows. The Manor is listed in the Register of objects of cultural heritage, because of its significance for the history and character of the region."));

  listOfENAttractions.add(AttractionStruct(
      name: "The Sobieski’s Oak Tree Natural Monument",
      address: "43-450 Ustroń, ul.Daszyńskiego, Poland",
      addressLocation: LatLng(49.72703, 18.806334),
      phoneNumber: "+48338542653",
      url: "https://visit.ustron.pl/pl/dab-sobieskiego,578",
      attractionIds: [0, 8, 4],
      description:
          "The Sobieski’s Oak Tree Natural Monument is 331 years old; its circumference is 645 cm, and it’s  30 m tall. According to the legend, it was planted by the inhabitants of Ustroń to commemorate the time when the Polish king, John III Sobieski, marched through this region with his troops on the way to the battle of Vienna. The tradition of Sobieski’s trees is known in Upper Silesia. It is unique for this region. There is no other area in the country where so many trees were planted for a single historical occasion. In May 1683 the left wing of the king’s troops marched through the town of Ustroń on their way to Vienna, as a relief force. This fact is corroborated by a note made by the parish priest from Goleszów: “At Pentecost no people came to the service; they were all where the Polish troops marched towards Cisownica. Polish army was heading for Vienna through Bielsko, Skoczów, Ustroń, Cisownica, Leszna, Třinec, Jablunkov.” In 2015 Sobieski’s Oak Tree was short-listed in the competition for the Tree of the Year."));

  listOfENAttractions.add(AttractionStruct(
      name: "The Alley of Legends",
      address: "bulwar Księżycowy, 43-460 Wisła, Poland",
      addressLocation: LatLng(49.654989, 18.861402),
      phoneNumber: "+48790262829",
      url: "https://www.wisla.pl/turysta/attractions/138",
      attractionIds: [0, 2, 4],
      description:
          "The Alley of Legends is a reference to the legends of the Śląsk Cieszyński region, which is historically where the town of Wisła used to belong. The Alley includes eight two-metre-tall statues created during the 1st International Outdoor Sculpting Session organised in July 2014 in the Grzegorz Michałek Garden of Arts in Wisła. The sculptures are made of linden wood and they represent the most famous legendary figures from the Polish and Czech folklore of the cross-border region. The largest sculpture is Imko Wisełka. Other characters we can see are for example Baba Jaga or Południca, well-known witches from the Slavic legends. These sculptures were created by a group of six artists from Poland and Czech Republic: Grzegorz Michałek, Anna Urbaniak, Piotr Galej, Artur Szołdra, Władysław Ligocki and their guest from the Czech Republic, Jiří Cieslar. An interesting fact is that this Alley would not have been created, had it been not for the sponsors, who offered financial support through the Polak Potrafi crowdfunding platform. A total of 28 people provided funds to support the project."));

  listOfENAttractions.add(AttractionStruct(
      name: "The Way of St. James",
      address: "Kolorowa 1, 43-370 Szczyrk, Poland",
      addressLocation: LatLng(49.718757, 19.035103),
      phoneNumber: "+48338178429",
      url: "http://www.szczyrk.wiara.org.pl",
      attractionIds: [0, 5, 4],
      description:
          "The Way of St. James  in Szczyrk  is section IV of the Beskid Way of  St. James, which runs through Beskid Śląski and includes walking routes, tourist trails, skiing routes and bike roads, except for the short fragment of  Beskidzka street in Szczyrk. Section IV of the Way of St. James starts near the Sanctuary of St.  James in Szczyrk. The Sanctuary is an old wooden church with late Baroque interior. Most of the décor and equipment comes from the Norbertine abbey in Nowy Sącz. Next to the main altar there is a stone baptismal font, which dates back to 1800. When following the Way of St. James, it’s good to find the time to see St.  James’s Square in the centre of Szczyrk. The Szczyrk Brotherhood labelled their fragment of the way with a white shell on blue background, with a red Santiago cross in the centre. Any changes of direction are marked with a yellow arrow next to the shell. The Beskid Way of St. James will take you along old pilgrimage routes, both local and far-reaching. "));

  listOfENAttractions.add(AttractionStruct(
      name: "Chimneyless Hut of the Kawulok Family",
      address: "Istebna 163, 43-470 Istebna,Wojtosze, Poland",
      addressLocation: LatLng(49.560523, 18.915318),
      phoneNumber: "+48790262829",
      url: "http://chatakawuloka.eu",
      attractionIds: [0, 1, 6, 5],
      description:
          "Chimneyless Hut of the Kawulok Family, it’s a wooden historical regional chamber dating back to 1863. It belonged to Jan Kawulok, a renowned promoter of the regional culture, the craftsman famous for his folk instruments and a storyteller from Istebna. Come and see what a traditional mountain hut used to look like! In this wooden cottage with a shingled roof and two rooms separated by a hallway you can see traditional interior design as well as old household tools, such as e.g. querns, which were used to make flour. In one of the rooms there is a chimneyless stove - since there was no chimney, the smoke would seep out to the room! Do you know why? You can search for the answer in the unique Hut of the Kawulok Family. It is a place with special atmosphere, full of exciting tales and most unique melodies - you won’t hear them in any other place. The sounds of traditional instruments used by shepherds will take you back to the times gone by. The Hut of the Kawulok Family is situated along the Wooden Architecture Route."));

  listOfENAttractions.add(AttractionStruct(
      name: "The Old Hut museum",
      address: "Piastowska 1, 34-360 Milówka, Poland",
      addressLocation: LatLng(49.561733, 19.087634),
      phoneNumber: "+48338637399",
      url: "http://gok.milowka.pl",
      attractionIds: [0, 6, 5],
      description:
          "The Old Hut museum is a historical wooden cottage - an example of a traditional building typical of the Żywiec region and one of the oldest examples of folk architecture. According to a local legend, King John Casimir supposedly stayed in this hut while he was fleeing from the Swedes. King John III Sobieski also spent the night here on his way to Vienna. According to the inscription of the joist supporting the ceiling, the building dates back to 1739. It was built by the local innkeeper, Piotr Gorel, and initially it must have been an inn. In the hut you will also see the hall with clay floor; the attic, which was used as a smokehouse; the living quarters (with household equipment) and a number of other rooms not found in contemporary houses. The Old Hut is not only a museum, where we can see the exposition, but also a meeting place. During the events organised here you can observe such activities as spinning on a spindle, shelling beans or plucking feathers."));

  listOfENAttractions.add(AttractionStruct(
      name: "Wooden toys by Łoboz",
      address: "Pewel Wielka 390, 34-340 Jeleśnia, Poland",
      addressLocation: LatLng(49.670707, 19.391867),
      phoneNumber: "+48338747003",
      url:
          "https://jelesnia.naszgok.pl/zabawka-ludowa/g,marian-i-wieslawa-loboz",
      attractionIds: [0, 1, 2, 5],
      description:
          "                                                                                                                                                                                                                                                         Wooden toys by Łoboz. Marian Łoboz  is one of the most renowned craftsmen in the Żywiec region. He and his wife, Wiesława, belong to the  Association of Folk Artists.  He’s been cultivating the family toymaking tradition since childhood. He learnt this craft from his parents and his grandpa Józef. The whole family was involved in making and selling toys. They received numerous awards in wooden folk toy competitions, at trade fairs and cultural events. The tradition ran in the family - it was started by grandpa Józef, and then continued by Agnieszka and Władysław, who passed it on to their children. The family makes wooden horses, merry-go-rounds and movable birds on a stick, but also carriages, hayracks, cradles, wheelbarrows and their recent additions include innovative Pegasus rocking horses. In 2019 they received the Oskar Kolberg Award for merits in folk culture."));

  listOfENAttractions.add(AttractionStruct(
      name: "The Chamber of Slovakian Gaida Makers",
      address: "Oravská Polhora 565, 029 47 Oravská Polhora",
      addressLocation: LatLng(49.544961, 19.369119),
      phoneNumber: "+421903044033",
      url: "https://csg.gajdy.sk",
      attractionIds: [0, 3, 5],
      description:
          "The Chamber of Slovakian Gaida Makers, which focuses   on maintaining, documenting and promoting the gaida-maker traditions, together with the relevant information, craftsmanship and artistry of the local members. Making and playing folk instruments, with special consideration of the gaida bagpipe and its culture in Slovakia, was listed on the UNESCO Representative List of the Intangible Cultural Heritage of Humanity. The Chamber is supposed to ensure proper conditions, so that the craftsmen and their apprentices can develop their art and raise their qualifications. In this place you can see a collection of folk instruments made by the local craftsmen: pipes, bagpipes and other wind instruments. The exposition in one of the rooms is a presentation of the history of Beskid musicians. An interesting exhibit is the old chest with guild artefacts. Inside you will also find the tools needed to make folk instruments."));

  listOfENAttractions.add(AttractionStruct(
      name: "Hviezdoslav’s Hut",
      address: "029 47 Oravská Polhora",
      addressLocation: LatLng(49.541162, 19.499904),
      phoneNumber: "+421907114021",
      url: "https://www.oravskemuzeum.sk/expozicie/literarne-expozicie/hajovna",
      attractionIds: [0, 6, 7, 5],
      description:
          "Hviezdoslav’s Hut is an idyllic place in wilderness near the Babia Góra mountain. It is associated with two important names from Slovakian literature - a poet Pavel Országh Hviezdoslav and a writer Milo Urban. This is where Hviezdoslav searched for inspiration when working on  Hájnikova žena. In this hut you will find two exhibitions related to literature, both organised by the Orava Museum. One of them is the largest exposition featuring the most famous work by Pavel Hviezdoslav - The Gamekeeper’s Wife. In the exhibition you can see the setting which was an inspiration for the poet. You can also learn more about this epic work: you will see the first printed edition, as well as all the others, and various renditions of this piece in other branches of art. In the next building there is the other exposition, devoted to one of the most famous and important representatives of contemporary Slovakian literature – Milo Urban."));

  listOfENAttractions.add(AttractionStruct(
      name: "The Slanica Island of Art",
      address: "029 01 Námestovo",
      addressLocation: LatLng(49.40724, 19.517058),
      phoneNumber: "+421905915108",
      url: "http://www.oravskagaleria.sk/slanicky_ostrov_umenia.html",
      attractionIds: [0, 6, 4],
      description: ""));

  listOfENAttractions.add(AttractionStruct(
      name: "Vavrek’s Linden",
      address: "Obec Vavrečka 203, 029 01",
      addressLocation: LatLng(49.382081, 19.469233),
      phoneNumber: "+421905243223",
      url:
          "https://www.vavrecka.sk/obec/zaujimavosti-obce-1/400-rocna-vavrekova-lipa-22sk.html",
      attractionIds: [0, 8, 4],
      description:
          "Vavrek’s Linden  - this linden tree is more than 400 years old. According to the legend, it was planted by the founder of this village, the head shepherd named Vavrek. Although originally there was only one family here, the shepherd settlement known as Vavrečka soon became a large village, with 1600 inhabitants. Local people have always regarded the linden as the historical symbol of their municipality. This is probably why there are as many as 50 lindens all around the place now. Vavrek’s linden has been standing here for centuries and silently observing the life around it. But just like people, also linden trees get old. They are ruined by time, weather and people. After the linden was damaged, it had to be felled down in 2019, because it posed a hazard. The grateful inhabitants of the village planted a new linden (Tilia cordata) in the same place. Vavrek’s linden has a worthy successor, its genetic relative from the Borová hora arboretum in Zvolen. It will refresh the memory of the next generations. Thanks to this memento, local people will remember their history and respect those who came before them."));

  listOfENAttractions.add(AttractionStruct(
      name: "The Gallery of Folk Sculpture",
      address: "Babín 372, 029 52 Hruštín",
      addressLocation: LatLng(49.330478, 19.386078),
      phoneNumber: "043/5577207",
      url:
          "https://www.babin.sk/obec-2/udalosti-v-obci/kultura/stala-expozicia-ludoveho-rezbarstva",
      attractionIds: [0, 2, 4],
      description:
          "The Gallery of Folk Sculpture. It was opened on 13th August 2006. The permanent exhibition was opened on the 100th anniversary of Štefan Siváň’s birth. Unfortunately, the artist did not live to see it. Since 2006 international outdoor sculpting events have been organised in front of this building. Upstairs there is the permanent exhibition of wooden figures created by 40 primitivist sculptors from Orava, Kysuce, Liptov, Upper and Lower Váh River Basin, Podpoľanie, Košice, Czech Republic and Poland. All of these works were created during fifteen international sculpting sessions in Babín. The result of the International Outdoor Sculpting Sessions titled “Return to the Siváns“ is a large collection of 102 works of art, which required appropriate exposition and ample space. The first outdoor sculpting session was organised in 2002. The idea came from Štefan Siváň Junior, from the authorities of the Babín municipality and from the Orava Culture Centre."));

  listOfENAttractions.add(AttractionStruct(
      name: "The Štefan Siváň Folk Sculpture Exhibition",
      address: "Babín 50, 029 52 Hruštín",
      addressLocation: LatLng(49.332194, 19.37975),
      phoneNumber: "+421917773541",
      url:
          "https://www.babin.sk/obec-2/za-vonou-dreva/expozicia-ludoveho-rezbara-stefana-sivana",
      attractionIds: [0, 2, 4],
      description:
          "The Štefan Siváň Folk Sculpture Exhibition  is an exposition of wooden sculptures created in the artist’s family home, in order to promote folk art. Štefan Siváň came from Babín. He was a folk sculptor. In his free time he liked to tamper with wood and provided an artistic framework for it. His instinctive work was soon recognised by professional artists. He is sometimes referred to as the Slovakian Michelangelo. This folk art heritage was taken over by his son, Štefan Siváň Jr., who started from wooden whistles, sticks and figures, in order to proceed to characteristic Christmas cribs. Siváň’s art appeared, developed and then departed together with him. Strictly speaking, there can be no question of followers or equals. No other naive artist in Slovakia is endowed with such powerful and creative imagination. Although he was petite, his works were magnificent."));

  FFAppState().Attractions = listOfENAttractions;

  var listOfPlAttractions = <AttractionStruct>[];
  listOfENAttractions.add(AttractionStruct(
      name: "Park Turystyki",
      address: "Malinowa 2b, 43-438 Brenna, Poland",
      addressLocation: LatLng(49.721188, 18.918688),
      phoneNumber: "+48334740601",
      url: "https://turysta.brenna.org.pl/pl/park-turystyki",
      attractionIds: [0, 1, 2, 3, 4],
      description:
          "Park Turystyki to centrum rozrywkowo-rekreacyjne. Głównym obiektem Parku jest nowoczesny Amfiteatr.  Pod jego dachem odbywają się najważniejsze imprezy plenerowe.  Artyści również znajdą tu coś dla Siebie, bowiem na terenie parku odbywają się plenery rzeźbiarskie. Ten Park to również idealne miejsce dla osób lubiących aktywny wypoczynek, bowiem znajduje się tu wiele atrakcji takich jak boisko do koszykówki, siatkówki plażowej, plac rekreacyjny oraz zewnętrzna siłownia a w okresie zimowym również lodowisko. Plac rekreacyjny to świetna rozrywka dla całej rodziny. W sezonie letnim na grach i zabawach spędzą w tym miejscu czas wszyscy miłośnicy aktywnego wypoczynku. Jeśli chciałbyś wybrać się na wycieczkę rowerową możesz skorzystać z wypożyczalni rowerów znajdującej się w parku, która oferuje rowery dla całej rodziny oraz kaski i foteliki rowerowe. Ponadto w Parku znajduje się plac zabaw."));

  listOfPlAttractions.add(AttractionStruct(
      name: "Kozia Zagroda",
      address: "Sportowa 3, 43-438 Brenna, Poland",
      addressLocation: LatLng(49.719861, 18.921944),
      phoneNumber: "+48513422143",
      url: "http://koziazagroda.pl",
      attractionIds: [0, 1, 6, 5],
      description:
          "Kozia Zagroda to piękne i niepowtarzalne miejsce w tradycyjnej kulturze mieszkańców Beskidu Śląskiego. Gospodarze Koziej Zagrody oczarowani wałaską kulturą stworzyli miejsce, gdzie wszystko to, co mieści się w słowie góralszczyzna jest na wyciągnięcie ręki. W budynku restauracji, będącym repliką drewnianej chałupy z 1928 r.,  można skosztować tradycyjnej beskidzkiej kuchni. Dla koneserów dobrego smaku Gospodarze przygotowali własne wyroby, których darmo szukać na sklepowych półkach: herbatki z breńskich zielin, marmolady z borówek, soki z moiczków. Możesz wziąć udział w warsztatach regionalnych z wyrobu sera, obróbki wełny, ozdabiania pierniczków i pieczenia chleba na zakwasie. Czym byłaby Kozia Zagroda bez kóz? Tuż obok naturalnego placu zabaw znajduje się koszor (zagroda) ze zwierzętami pasterskimi: kozami i owieczkami. To miejsce zachwyci nie tylko miłośników zwierząt, ale i wielbicieli pysznej, tradycyjnej kuchni."));

  listOfPlAttractions.add(AttractionStruct(
      name: "Beskidzki Dom Zielin Przytulia",
      address: "Wyzwolenia 69, 43-438 Brenna, Poland",
      addressLocation: LatLng(49.722582, 18.912698),
      phoneNumber: "+48334000021",
      url: "https://domzielin.eu",
      attractionIds: [0, 1, 8, 6, 3, 5, 4],
      description:
          "Beskidzki Dom Zielin „Przytulia” to żywe muzeum. Miejsce wyjątkowe na mapie kulturalnej Śląska Cieszyńskiego. Znajdująca się tutaj wystawa multimedialna obrazuje funkcjonowanie ziół w kulturze i życiu codziennym górali śląskich, a także w ciekawy sposób przybliża historię Beskidu Śląskiego i jego mieszkańców. Wystawa jest podzielona na cztery działy tematyczne: w zdrowiu i w chorobie, w rodzinnym domu, w polu i w zagrodzie, w świątek piątek i niedzielę. Eksponaty oraz zioła w formie suszonych zbiorów i modeli można nie tylko zobaczyć, ale dotknąć i powąchać. Dodatkowo od wiosny do jesieni można zapoznać się z najważniejszymi ziołami naszego regionu w herbarium, które otacza budynek Przytulii. Podczas wizyty w Domu Zielin można wziąć udział w degustacji owocowo-ziołowej herbaty breńskiej, nauczyć się rozpoznawania roślin w herbarium, czy aktywnie uczestniczyć w szkubaczkach, kiszeniu kapusty lub tworzeniu drewnianych zabawek."));

  listOfPlAttractions.add(AttractionStruct(
      name: "Transgraniczny Ogród Zielin",
      address: "Górecka 224, 43-438 Brenna, Poland",
      addressLocation: LatLng(49.727028, 18.898476),
      phoneNumber: "+48338586971",
      url: "https://turysta.brenna.org.pl/pl/ogrod-zielin-z-placem-zabaw",
      attractionIds: [0, 1, 8, 4],
      description:
          "Transgraniczny Ogród Zielin to miejsce powstało, by bawić i uczyć poprzez uaktywnienie  naszych podstawowych zmysłów: wzroku, słuchu, węchu, dotyku a nawet smaku. Ogród został tak zaprojektowany, by ułatwić prowadzenie lekcji i warsztatów przyrody w terenie, warsztatów proekologicznych, zrozumienie  zjawisk fizycznych występujących w przyrodzie, prowadzenie zajęć rozwijających sprawność manualną, koordynację wzrokowo-ruchową, wypoczynek dzieci na świeżym powietrzu oraz poznanie pracy w ogrodzie i poszerzenie wiedzy w zakresie ogrodnictwa oraz zielarstwa. Dzieci i młodzież zapoznają się tu z rodzimymi gatunkami żyjącym na pograniczu Polsko-Słowackim, dowiedzą sią jak wykorzystywano motywy przyrodnicze w kulturze tradycyjnej, czy też jak roślinność jest powiązana z ludowymi wierzeniami i obrzędami magicznymi. Tutaj odpoczniesz z rodziną i przyjaciółmi otoczony bujną roślinnością, wonnymi kwiatami oraz smakowitymi ziołami i owocami."));

  listOfPlAttractions.add(AttractionStruct(
      name: "Dworek Myśliwski „Konczakówka” ",
      address: "Głębiec 26, 43-438 Brenna, Poland",
      addressLocation: LatLng(49.748698, 18.898081),
      phoneNumber: "+48338536496",
      url: "https://turysta.brenna.org.pl/pl/dworek-mysliwski-konczakowka",
      attractionIds: [0, 6, 5],
      description:
          "Dworek Myśliwski „Konczakówka”  to jedna z najcenniejszych pereł architektury drewnianej w Beskidach. Budowla została wzniesiona przez Brunona Konczakowskiego, zamożnego cieszyńskiego kupca,  myśliwego i znanego w Europie kolekcjonera broni.  Bryła dworku nawiązuje do modnego w okresie dwudziestolecia międzywojennego stylu tyrolskiego. Na kamiennej, podpiwniczonej podmurówce zbudowano drewniane piętro i poddasze. Surowiec, drewno limbowe i modrzewiowe sprowadzono z włoskich i austriackich Alp. Cieszyńscy majstrowie belki połączyli bez użycia gwoździ, na tzw. „zacios”. Kunsztowne balustrady balkonów oraz trójkątne szczyty na zewnątrz, zdobione porożami jelenia nadają dworkowi okazały i reprezentacyjny wygląd. We wnętrzach do dziś zachowały się  oryginalne meble wykonane z limbiny oraz zdobiony zielonymi kaflami, secesyjny piec."));

  listOfPlAttractions.add(AttractionStruct(
      name: "Chlebowa Chata",
      address: "Breńska 113, 43-436 Górki Małe, Poland",
      addressLocation: LatLng(49.7582559, 18.8664292),
      phoneNumber: "+48338539630",
      url: "http://www.chlebowachata.pl",
      attractionIds: [0, 1, 6, 5],
      description:
          "Chlebowa Chata  to tak naprawdę dawna wieś w pigułce, tyle że jakby... ożywiona. Często nazywana jest “ muzeum chleba”. Piec jest sercem tego miejsca. Na spotkaniach z okruchem tradycji poznasz drogę ziarenka zboża, które musi pokonać wiele etapów, aby w postaci bochenka znaleźć się na naszych stołach i kusić niepowtarzalnym zapachem. W ofercie znajdują się również pokazy z pieczenia chleba i podpłomyków połączone z częścią praktyczną  młócenia cepami, mielenia zboża na żarnach i przesiewania mąki oraz degustacją „do syta“ wypieków z masłem, smalcem z ziołami i miodem –  wszystko  z własnej produkcji. Oferta warsztatowa Chlebowej Chaty nie kończy się na umiejętnościach piekarskich. Gospodarze uczą młodszych, a starszym przypominają jak dawniej wyglądało życie na wsi, jak robiono masło, jakimi narzędziami pracowano w gospodarstwie, czym zajmuje się pszczelarz, bo jak wiadomo pszczelarz dwoi się i troi, gdy w ulu się roi."));

  listOfPlAttractions.add(AttractionStruct(
      name: "Transgraniczna Strefa Kultury",
      address: "Górki Wielkie, ul Sportowa 8, Poland",
      addressLocation: LatLng(49.774006, 18.849722),
      phoneNumber: "+48338586971",
      url: "https://turysta.brenna.org.pl/pl/transgraniczna-strefa-kultury-2",
      attractionIds: [0, 1, 2, 7, 4],
      description:
          "Transgraniczna Strefa Kultury pozwala w niecodzienny i innowacyjny sposób kultywować dziedzictwo kulturowe pogranicza. To miejsce składa się z  4 obiektów: poczwórnej huśtawki  typu bocianie gniazdo,  Dworu Kossaków, Magicznego lasu oraz Wioski skrzatów. Dzieci zachwyci drewniany dworek  z wieżami, mostkami, ściankami i innymi elementami tworzącymi labirynt przestrzenny oraz rzeźbione totemy z podobiznami legendarnych leśnych stworzeń. Na gałęziach huśtawki można zobaczyć strzygi, zmory i czarownice, o bajkowym wyglądzie. Inspiracją do powstania tego miejsca była twórczość  Zofii Kossak i jej książka Kłopoty Kacperka góreckiego skrzata. To nie jest zwyczajny plac zabaw, lecz majestatyczne miejsce, które pobudzi dziecięcą wyobraźnię, uwolni magiczny klimat i pomoże odkryć legendarne stworzenia. Obiekty znajdujące się na terenie placu zabaw są dostosowane do dzieci w różnym wieku poprzez zróżnicowane poziomy trudności."));

  listOfPlAttractions.add(AttractionStruct(
      name: "Centrum Kultury i Sztuki „Dwór Kossaków”",
      address: "Stary Dwór 4, 43-436 Górki Wielkie, Poland",
      addressLocation: LatLng(49.78177, 18.827916),
      phoneNumber: "+48338510351",
      url: "http://www.dworkossakow.pl",
      attractionIds: [0, 1, 7, 5],
      description:
          "Centrum Kultury i Sztuki „Dwór Kossaków”  to miejsce powstało z inicjatywy Fundacji im. Zofii Kossak. Obiekt został nagrodzony przez Internautów w IV edycji konkursu Polska Pięknieje – 7 Cudów Funduszy Europejskich, organizowanym przez Ministerstwo Rozwoju Regionalnego. Budynek został wyposażony w multimedialne urządzenia, gdzie można obejrzeć archiwalne zdjęcia rodzinne lub posłuchać wypowiedzi pisarki i jej córki. Na ścianach znajdują się wydruki oraz fototapety nawiązujące do życia i twórczości Zofii Kossak oraz jej rodziny. Poza działalnością wystawienniczą Fundacja im. Zofii Kossak organizuje cykl letnich imprez kulturalnych pn. Artystyczne Lato u Kossaków. W ramach których można uczestniczyć w plenerach malarskich, warsztatach plastycznych, teatralnych, rzeźby lub rękodzieła, koncertach, spektaklach. Dwór został wpisany do rejestru zabytków, zaznaczając, iż obiekt ten ma poważne znacznie dla historii i charakterystyki regionu."));

  listOfPlAttractions.add(AttractionStruct(
      name: "Pomnik przyrody Dąb Sobieskiego",
      address: "43-450 Ustroń, ul.Daszyńskiego, Poland",
      addressLocation: LatLng(49.72703, 18.806334),
      phoneNumber: "+48338542653",
      url: "https://visit.ustron.pl/pl/dab-sobieskiego,578",
      attractionIds: [0, 8, 4],
      description:
          "Pomnik przyrody Dąb Sobieskiego ma 331 lat, jego obwód wynosi: 645 cm, a wysokość: 30 m. Według legendy zasadzili go mieszkańcy Ustronia na pamiątkę przejścia oddziałów króla polskiego Jana Sobieskiego pod Wiedeń. Tradycja drzew Sobieskiego znana jest na Górnym Śląsku i jest kulturowym ewenementem na skalę kraju, bowiem w żadnym innym regionie Polski nie wiąże się pochodzenia tak wielu drzew z jednym wydarzeniem historycznym. W maju 1683 r. przemaszerowało przez Ustroń lewe skrzydło oddziałów wojska króla Jana Sobieskiego, zdążające na odsiecz Wiedniowi. Fakt ten potwierdza notatka proboszcza goleszowskiego następującej treści: „Na święty Duch nie było ludzi na nabożeństwie dla marszu wojaków polskich na Cisownice maszerujących. Wojsko polskie zdążające pod Wiedeń szło przez Bielsko, Skoczów, Ustroń, Cisownicę, Leszną, Trzyniec, Jabłonków.” W 2015 roku Dąb Sobieskiego znalazł się w finałowej 16 konkursu na Drzewo Roku Klubu Gaja."));

  listOfPlAttractions.add(AttractionStruct(
      name: "Aleja podań i legend",
      address: "bulwar Księżycowy, 43-460 Wisła, Poland",
      addressLocation: LatLng(49.654989, 18.861402),
      phoneNumber: "+48790262829",
      url: "https://www.wisla.pl/turysta/attractions/138",
      attractionIds: [0, 2, 4],
      description:
          "Aleja podań i legend  nawiązuje do legend Śląska Cieszyńskiego, do którego historycznie należy Wisła. Aleję tworzy osiem dwumetrowych rzeźb powstałych w trakcie I Międzynarodowego Pleneru Rzeźbiarskiego, który odbył się w lipcu 2014 roku w Ogrodzie Sztuk Grzegorza Michałka w Wiśle. Rzeźby wykonane zostały w drewnie lipowym i przedstawiają najbardziej znane postacie żyjące od wieków w świadomości mieszkańców, w dawnych podaniach i baśniach terenu pogranicza polsko-czeskiego. Najwieksza rzeźbą jest Imko Wisełka. Oprócz niego można zobaczyć np. Babę Jagę czy Południcę. Rzeźby to efekt pracy grupy sześciu artystów rzeźbiarzy z Polski i Czech : Grzegorza Michałka, Anny Urbaniak, Piotra Galeja, Artura Szołdry, Władysława Ligockiego oraz gościa z Czech, Jirziego Cieślara. Co ciekawe, powstanie Alei nie byłoby możliwe, gdyby nie  sponsorzy, którzy finansowo wsparli projekt na platformie Polak Potrafi. Inicjatywę wsparło łącznie 28 osób."));

  listOfPlAttractions.add(AttractionStruct(
      name: "Szlak Jakubowy",
      address: "Kolorowa 1, 43-370 Szczyrk, Poland",
      addressLocation: LatLng(49.718757, 19.035103),
      phoneNumber: "+48338178429",
      url: "http://www.szczyrk.wiara.org.pl",
      attractionIds: [0, 5, 4],
      description:
          "Szlak Jakubowy w Szczyrku to odcinek IV Beskidzkiej Drogi św. Jakuba ciągnący się na terenie Beskidu Śląskiego szlakami spacerowymi, turystycznymi, narciarskimi i rowerowymi za wyjątkiem krótkiego odcinka ul. Beskidzkiej w Szczyrku. IV odcinek drogi św. Jakuba ma swój początek przy Sanktuarium św. Jakuba w Szczyrku. Sanktuarium to zabytkowy drewniany kościół, wyposażony w stylu późnobarokowym, w większości w zabytki pochodzące z nowosądeckiego klasztoru norbertynów. Obok głównego ołtarza znajduje się kamienna chrzcielnica z 1800 roku. Podążając szlakiem warto również zobaczyć Plac Św. Jakuba znajdujący się w centrum Szczyrku. Szczyrkowskie Bractwo oznaczyło swój odcinek białą muszlą na niebieskim tle i z czerwonym mieczokrzyżem pośrodku, natomiast wszelkie zmiany kierunku żółtą strzałką obok muszli. Beskidzka Droga św.Jakuba wiedzie pielgrzyma starodawnymi traktami pątniczymi, zarówno dalekobieżnymi jak i lokalnymi."));

  listOfPlAttractions.add(AttractionStruct(
      name: "Kurna Chata Kawuloka",
      address: "Istebna 163, 43-470 Istebna,Wojtosze, Poland",
      addressLocation: LatLng(49.560523, 18.915318),
      phoneNumber: "+48790262829",
      url: "http://chatakawuloka.eu",
      attractionIds: [0, 1, 6, 5],
      description:
          "Kurna Chata Kawuloka, ta zabytkowa izba regionalna powstała z drewna z 1863 roku. Należała do Jana Kawuloka, wybitnego propagatora kultury regionalnej, twórcy instrumentów ludowych i gawędziarza z Istebnej. Odkryj, jak wyglądał niegdyś góralski dom! W tej drewnianej chacie krytej gontem, z dwiema izbami z sienią na środku, zobaczysz tradycyjny wystrój wnętrz i archaiczne sprzęty codziennego użytku, np. żarna służące do wyrobu mąki. W jednej z izb znajduje się „kurlawy”, czyli dymny piec, z którego dym wydostawał się wprost do pomieszczenia, ponieważ nie posiadał komina! Czy wiesz dlaczego? Odpowiedzi szukaj w niezwykłej chacie Kawuloka. Jej izby wypełnia niesamowity klimat, barwne opowieści i przede wszystkim wyjątkowe melodie, których nie usłyszysz w żadnym innym miejscu. Dźwięki unikatowych, pasterskich instrumentów przenoszą gości w dawno minione, intrygujące czasy. Chata Kawuloka znajduje się na szlaku Architektury Drewnianej."));

  listOfPlAttractions.add(AttractionStruct(
      name: "Muzeum Stara Chałupa",
      address: "Piastowska 1, 34-360 Milówka, Poland",
      addressLocation: LatLng(49.561733, 19.087634),
      phoneNumber: "+48338637399",
      url: "http://gok.milowka.pl",
      attractionIds: [0, 6, 5],
      description:
          "Muzeum Stara Chałupa   to zabytkowy drewniany dom, który jest przykładem tradycyjnego budownictwa Żywiecczyzny i jednym z najstarszych przykładów architektury ludowej. Lokalna legenda głosi, że w chałupie miał się zatrzymać król Jan Kazimierz podczas ucieczki przed Szwedami. Miał tu nocować również Jan III Sobieski w drodze do Wiednia. Napis na belce podtrzymującej strop (tzw. tragarzu) informuje, że obiekt ten wzniesiony został w roku 1739. Budowniczym był miejscowy karczmarz, Piotr Gorel i zapewne z początku chałupa pełniła rolę karczmy. Zobaczymy tu sień z glinianym klepiskiem, strych służący jako wędzarnia, izbę mieszkalną (z przedmiotami codziennego użytku) oraz wiele innych pomieszczeń, których nie spotkamy obecnie w naszych domostwach. „Stara Chałupa” to nie tylko muzeum, w którym zwiedza się ekspozycje, ale również miejsce spotkań podczas których można zobaczyć pokaz przędzenia wełny, łuskania fasoli  czy skubania pierza."));

  listOfPlAttractions.add(AttractionStruct(
      name: "Zabawki drewniane Łoboz",
      address: "Pewel Wielka 390, 34-340 Jeleśnia, Poland",
      addressLocation: LatLng(49.670707, 19.391867),
      phoneNumber: "+48338747003",
      url:
          "https://jelesnia.naszgok.pl/zabawka-ludowa/g,marian-i-wieslawa-loboz",
      attractionIds: [0, 1, 2, 5],
      description:
          "Możesz odwiedzić twórców zabawek w Pewli Wielkiej lub zobaczyć wystawę prac Państwa Łoboz oraz odebrać puzzel w Gminnym Ośrodku Kultury w Jeleśni, znajdującym się przy ulicy Plebańskiej 1, 34-340 Jeleśnia.                                                                                                                                                                                                                                     Zabawki drewniane Łoboz. Marian Łoboz to jeden z najbardziej cenionych rękodzielników Żywiecczyzny. Razem z żoną Wiesławą są członkami Stowarzyszenia Twórców Ludowych.  Rodzinne tradycje zabawkarskie kultywuje od najmłodszych lat. Tajniki wyrobu i zdobienia zabawek przekazali mu rodzice oraz dziadek Józef. Przy wyrobie i sprzedaży zaangażowana była cała rodzina. Wielokrotnie nagradzani w konkursach na budowę drewnianych zabawek ludowych, uczestniczyli w licznych targach i imprezach o charakterze kulturalnym. Kontynuując tradycję zapoczątkowaną przez dziadka Józefa, a następnie rodziców Agnieszkę i Władysława, przekazali swoje umiejętności własnym dzieciom. Rodzina wykonuje przede wszystkim koniki, karuzelki i „klepoki” (Ptaki na patyku, które podczas ruchu klaszczą skrzydłami), ale także bryczki, wozy drabiniaste, kołyski, taczki, a od niedawna także nowatorskie Pegazy, konie na biegunach. W 2019 r. otrzymali Nagrodę im. Oskara Kolberga za zasługi dla kultury ludowej."));

  listOfPlAttractions.add(AttractionStruct(
      name: "Izba Cechu Słowackich Gajdziarzy",
      address: "Oravská Polhora 565, 029 47 Oravská Polhora",
      addressLocation: LatLng(49.544961, 19.369119),
      phoneNumber: "+421903044033",
      url: "https://csg.gajdy.sk",
      attractionIds: [0, 3, 5],
      description:
          "Izba Cechu Słowackich Gajdziarzy, której celem jest utrzymywanie, dokumentowanie i promowanie tradycji gajdziarskich, wiadomości, umiejętności rzemieślniczych oraz artystycznych członków cechu. Wyrób instrumentów muzycznych oraz gra na nich, ze szczególnym uwzględnieniem gajd i kultury gajdziarzy na Słowacji został w 2015 roku wpisany na listę światowego niematerialnego dziedzictwa kulturowego UNESCO. Zadaniem Izby jest zapewnienie mistrzom, czeladnikom i terminatorom Cechu Słowackich Gajdziarzy odpowiednich warunków do rozwijania ich działalności oraz podnoszenia umiejętności w tym zakresie. Zgromadzono tu trombity, dudy, piszczały i inne instrumenty wykonane przez miejscowych twórców. Ekspozycja w jednym z pomieszczeń poświęcona jest historii beskidzkich muzykantów. Ciekawym eksponatem jest zabytkowa skrzynia z artykułami cechowymi. Umieszczono tu także narzędzia niezbędne do wykonywania instrumentów."));

  listOfPlAttractions.add(AttractionStruct(
      name: "Gajówka (poety) Hviezdoslava",
      address: "029 47 Oravská Polhora",
      addressLocation: LatLng(49.541162, 19.499904),
      phoneNumber: "+421907114021",
      url: "https://www.oravskemuzeum.sk/expozicie/literarne-expozicie/hajovna",
      attractionIds: [0, 6, 7, 5],
      description:
          "Gajówka (poety) Hviezdoslava to Idylliczne miejsce na łonie orawskiej natury pod Babią Górą, z którym kojarzą się dwaj ważni przedstawiciele słowackiej literatury - poeta Pavel Országh Hviezdoslavem i prozaik Milo Urban. To tutaj Hviezdoslav szukał inspiracji do swojego dzieła Hájnikova žena. W związku z tym w gajówce znajdują się dwie ekspozycje literackie Muzeum Orawskiego. Znajduje się tu ekspozycja poświęcona chyba najsłynniejszemu dziełu Pavla Hviezdoslava - Żonie gajowego. Wystawa prezentuje otoczenie, z którego poeta czerpał inspirację i przybliża dzieło od jego powstania, pierwszego wydania drukiem przez wszystkie dotychczasowe wydania a także refleksję w innych rodzajach sztuki. W sąsiednim budynku znajduje się druga wystawa poświęcona jednemu z najważniejszych przedstawicieli współczesnej literatury słowackiej – Milo Urbanowi."));

  listOfPlAttractions.add(AttractionStruct(
      name: "Slanicka Wyspa Sztuki",
      address: "029 01 Námestovo",
      addressLocation: LatLng(49.40724, 19.517058),
      phoneNumber: "+421905915108",
      url: "http://www.oravskagaleria.sk/slanicky_ostrov_umenia.html",
      attractionIds: [0, 6, 4],
      description:
          "W 1953 roku wody Jeziora Orawskiego otoczyły wzgórek z kościołem pw. Podwyższenia Krzyża Świętego i kapliczkami drogi krzyżowej. Wcześniej górował on nad Slanicą. Miejscowość ta od XVIII wieku była jednym z najważniejszych ośrodków płóciennictwa i farbiarstwa na Orawie. Kilka lat po jej zalaniu w Galerii Orawskiej z siedzibą w Dolnym Kubínie pojawił się pomysł stworzenia na wyspie i w kościele ekspozycji. W 1971 roku w kościele otwarto wystawę „Słowackiej tradycyjnej ludowej rzeźby i malarstwa”. Na wolnym powietrzu urządzono lapidarium przedstawiające „Orawską sztukę kamieniarską XVIII i XIX wieku”, które udostępniono zwiedzającym w 1973 roku. W krypcie rodziny Klinovskich powstała ekspozycja poświęcona historii zatopionych miejscowości i budowie zapory. Ekspozycje Galerii Orawskiej są tak wyjątkowe, że Slanicka Wyspa Sztuki stała się jednym z najczęściej odwiedzanych miejsc na mapie kulturalnej Orawy."));

  listOfPlAttractions.add(AttractionStruct(
      name: "Vavrekova Lipa",
      address: "Obec Vavrečka 203, 029 01",
      addressLocation: LatLng(49.382081, 19.469233),
      phoneNumber: "+421905243223",
      url:
          "https://www.vavrecka.sk/obec/zaujimavosti-obce-1/400-rocna-vavrekova-lipa-22sk.html",
      attractionIds: [0, 8, 4],
      description:
          "Vavrekova Lipa to ponad 400-letnia Vavrekova lipa, którą według legendy zasadził założyciel tej miejscowości baca Vavrek. Z jednej pasterskiej rodziny rozrosła się Vavrečka w sporą wieś, liczącą 1600 osób. Od zamierzchłych czasów mieszkańcy Gminy Vavrečka uważali lipę za historyczny symbol swojej gminy. Dowodem tego jest fakt, że w chwili obecnej na terenie tej gminy rośnie ponad 50 lip. Vavrekova lipa przez stulecia cicho przyglądała się życiu wkoło i cicho królowała. Podobnie jak ludzie, również lipy się starzeją. Niszczy je upływ czasu, pogoda i ludzka ręka. W związku z dużym uszkodzeniem musiała zostać ścięta ze względów bezpieczeństwa w 2019 roku. Na miejscu, gdzie rosła wdzięczni vavrečanie posadzili nową lipę (Tilia cordata). W miejscu Vavrekovej lipy rośnie teraz jej genetyczna następczyni, wyhodowana w Arboretum Borová hora TU Zvolen. Będzie przypominać o tym, że historię należy znać i pamiętać, a przodków czcić..."));

  listOfPlAttractions.add(AttractionStruct(
      name: "Galeria Rzeźby Ludowej",
      address: "Babín 372, 029 52 Hruštín",
      addressLocation: LatLng(49.330478, 19.386078),
      phoneNumber: "043/5577207",
      url:
          "https://www.babin.sk/obec-2/udalosti-v-obci/kultura/stala-expozicia-ludoveho-rezbarstva",
      attractionIds: [0, 2, 4],
      description:
          "Galeria Rzeźby Ludowej. Została otwarta 13 sierpnia 2006r. Stała ekspozycja została otwarta z okazji 100. rocznicy urodzin Štefana Siváňa starszego, czego niestety artysta nie dożył. Od 2006 roku regularnie odbywają się przed budynkiem nowo powstałej Galerii międzynarodowe plenery rzeźbiarskie. Na górnym piętrze Galerii otwarto stałą ekspozycję figur drewnianych autorstwa 40-tu rzeźbiarzy prymitywistów z Orawy, Kysuc, Liptowa, Górnego i Dolnego Dorzecza Wagu, regionu Podpoľanie, Koszyc, Republiki Czeskiej i Polski, którzy stworzyli swoje dzieła na piętnastu międzynarodowych plenerach rzeźbiarskich w Babínie. Efektem Międzynarodowych Plenerów Rzeźbiarskich „Powroty do Sivánów“ jest duża kolekcja 102 dzieł artystycznych, które wymagały odpowiedniego wyeksponowania i pomieszczeń wystawienniczych. Pierwszy plener rzeźbiarski został zorganizowany w 2002r. z inicjatywy Štefana Siváňa młodszego, gminy Babín oraz Orawskiego Centrum Kultury."));

  listOfPlAttractions.add(AttractionStruct(
      name: "Ekspozycja rzeźbiarstwa ludowego im. Siváňa",
      address: "Babín 50, 029 52 Hruštín",
      addressLocation: LatLng(49.332194, 19.37975),
      phoneNumber: "+421917773541",
      url:
          "https://www.babin.sk/obec-2/za-vonou-dreva/expozicia-ludoveho-rezbara-stefana-sivana",
      attractionIds: [0, 2, 4],
      description:
          "Stała ekspozycja dziadka Siváňa połączona ze ścieżką edukacyjną. Miejsce między Urzędem Gminy a kościołem w Babínie jest poświęcone wybitnemu słowackiemu rzeźbiarzowi  – Štefanovi Siváňovi starszemu. Artysta ten urodził się i mieszkał w Babínie. Wolne chwile wykorzystywał, by nadawać drewnu artystyczny kształt. Jego twórczość zyskała uznanie wielu profesjonalnych artystów. Czasami bywa nazywany słowackim Michałem Aniołem. Sztuka Štefana Siváňa starszego pojawiła się, rozwijała i odeszła wraz z nim. Nie można więc znaleźć równych mu następców. Tradycje rzeźbiarskie przejął po nim syn – Štefan Siváň młodszy. Od dzieciństwa przyglądał się pracy ojca, zaczynał od rzeźbienia piszczałek, lasek i figurek. Potem tworzył szopki bożonarodzeniowe i rzeźby figuralne w charakterystycznym dla siebie stylu. Powstało miejsce, gdzie łączą się drewno, natura, człowiek i jego zdolności. Są tu drewniane rzeźby wykonane przez zdolnych mistrzów, w tym figurki kolędników wyrzeźbione przez wnuka Štefana Siváňa starszego. Odwiedzający mogą je zobaczyć i odpocząć na stylowo rzeźbionych ławkach lub w wiklinowej altanie. Na tablicach informacyjnych i interaktywnych panelach znajdą nowe wiadomości o posadzonych tu rodzimych gatunkach drzew, krzewów i leczniczych ziół."));

  FFAppState().AttractionsPL = listOfPlAttractions;
}
