import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'sk', 'pl'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? skText = '',
    String? plText = '',
  }) =>
      [enText, skText, plText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'nq8c6utz': {
      'en': 'Attractions',
      'pl': 'Wdzięki kobiece',
      'sk': 'Atrakcie',
    },
  },
  // InfoPage
  {
    'gx27qubs': {
      'en': 'Welcome in eLykozrut',
      'pl': 'Witamy w eLykozrucie',
      'sk': 'Vitajte v eLykozrut',
    },
    'cjfsc01v': {
      'en':
          'The Municipality of Brenna together with the Municipality of Babín and the Center for the Promotion of Culture and Sports of the Municipality of Brenna (OPKiS) are implementing the project \"For the Smell of Wood\" funded by the European Regional Development Fund under the Cross-border Cooperation Program Interreg VA Poland - Slovakia 2014- 2020.\nThe main goal of the project is to increase the attractiveness of the cultural and natural heritage of the Polish-Slovak border through the visibility of natural and cultural attractions of the cross-border area and environmental education on the Polish-Slovak border highlighted in the project.\nThe main goal will be achieved in. i. through: the development of infrastructure facilitating access to the cultural and natural wealth of the cross-border area. This is planned to:\nCreate an interactive nature trail of wood-scented attractions\nCreating a Cross-Border Herb Garden (CZB)\nCreation of a wooden Cross-border zone of culture (CZK), enabling to bring cultural heritage closer through the book by Žofia Kossak\nEstablishment of a permanent external exhibition of folk carving by Grandfather Siván in Babín\nFurthermore, the project will include:\nWorkshops in CZB entitled \"Our beautiful trees - treasures of people and animals\", \"On the way to the smell of wood\" and \"Trees from our imagination\"\nWicker knitting workshops, musical instrument games\nOrganization of carving open-air in Brenná and Babín\nCZK: arrangement of the painting plein air, realization of a theater performance and field play\nOrganizing an open-air event in Brenná and 3 educational events in Babín\nCreate a mobile app\nThe target group of the project are:\nResidents of partner municipalities\nPeople visiting villages / tourists\nHandicapped people\nEmployees of the Brenna Municipal Office and the Babín Municipal Office and OPKiS employees',
      'pl':
          'Gmina Brenna wraz z Gminą Babin oraz Ośrodkiem Promocji Kultury i Sportu Gminy Brenna (OPKiS) realizują projekt „Za zapachem drewna” dofinansowany ze środków Europejskiego Funduszu Rozwoju Regionalnego w ramach programu Cross- Program Współpracy Przygranicznej Interreg VA Polska - Słowacja 2014-2020.\nGłównym celem projektu jest zwiększenie atrakcyjności dziedzictwa kulturowego i przyrodniczego pogranicza polsko-słowackiego poprzez wyeksponowanie walorów przyrodniczych i kulturowych obszaru transgranicznego oraz podkreśloną w projekcie edukację ekologiczną na pograniczu polsko-słowackim .\nGłówny cel zostanie osiągnięty w. poprzez: rozwój infrastruktury ułatwiającej dostęp do bogactwa kulturowego i przyrodniczego obszaru transgranicznego. Planuje się:\nStwórz interaktywną ścieżkę przyrodniczą z atrakcjami pachnącymi drewnem\nTworzenie Transgranicznego Ogrodu Ziołowego (CZB)\nStworzenie drewnianej Transgranicznej Strefy Kultury (CZK), umożliwiającej przybliżenie dziedzictwa kulturowego poprzez książkę Zofii Kossak\nUtworzenie stałej ekspozycji zewnętrznej rzeźby ludowej Dziadka Sivána w Babinie\nPonadto projekt obejmie:\nWarsztaty w CZB pt. „Nasze piękne drzewa – skarby ludzi i zwierząt”, „W drodze do zapachu drewna” oraz „Drzewa z naszej wyobraźni”\nWarsztaty tkania wikliny, gry na instrumentach muzycznych\nOrganizacja plenerów carvingowych w Brennej i Babinie\nCZK: aranżacja pleneru malarskiego, realizacja spektaklu teatralnego i gry terenowej\nZorganizowanie imprezy plenerowej w Brennej oraz 3 imprez edukacyjnych w Babinie\nStwórz aplikację mobilną\nGrupą docelową projektu są:\nMieszkańcy gmin partnerskich\nLudzie odwiedzający wioski / turyści\nOsoby niepełnosprawne\nPracownicy Urzędu Miejskiego w Brennej i Urzędu Miejskiego w Babinie oraz pracownicy OPKiS',
      'sk':
          'Obec Brenna spolu s Obcou Babín a Centrom na podporu kultúry a športu obce Brenna (OPKiS) realizujú projekt „Za vôňou dreva“ financovaný z Európskeho fondu regionálneho rozvoja v rámci Krížových Program hraničnej spolupráce Interreg VA Poľsko - Slovensko 2014- 2020.\nHlavným cieľom projektu je zvýšenie atraktivity kultúrneho a prírodného dedičstva poľsko-slovenského pohraničia prostredníctvom zviditeľnenia prírodných a kultúrnych zaujímavostí prihraničného územia a environmentálnej výchovy na poľsko-slovenskom pohraničí zvýraznených v projekte .\nHlavný cieľ sa dosiahne v. i. prostredníctvom: rozvoja infraštruktúry uľahčujúcej prístup ku kultúrnemu a prírodnému bohatstvu cezhraničnej oblasti. Toto sa plánuje:\nVytvorte interaktívny náučný chodník atrakcií voňajúcich drevom\nVytvorenie cezhraničnej bylinkovej záhrady (CZB)\nVytvorenie drevenej Cezhraničnej zóny kultúry (Kč), umožňujúcej priblížiť kultúrne dedičstvo prostredníctvom knihy Žofie Kossak\nZriadenie stálej externej expozície ľudového rezbárstva starého otca Sivána v Babíne\nOkrem toho bude projekt zahŕňať:\nWorkshopy v CZB s názvom \"Naše krásne stromy - poklady ľudí a zvierat\", \"Na ceste za vôňou dreva\" a \"Stromy z našej fantázie\"\nWorkshopy pletenia z prútia, hry na hudobné nástroje\nOrganizácia carvingových plenérov v Brennej a Babíne\nKč: úprava maliarskeho plenéru, realizácia divadelného predstavenia a poľnej hry\nOrganizovanie open-air podujatia v Brennej a 3 vzdelávacích podujatí v Babíne\nVytvorte mobilnú aplikáciu\nCieľovou skupinou projektu sú:\nObyvatelia partnerských obcí\nĽudia navštevujúci dediny / turisti\nHandicapovaní ľudia\nPracovníci OÚ Brenna a OÚ Babín a zamestnanci OPKiS',
    },
    'gpl510i8': {
      'en': 'About',
      'pl': 'O',
      'sk': 'O',
    },
  },
  // PuzzleGamePage
  {
    '34oifbjw': {
      'en': 'QR Code Scanner',
      'pl': 'Skaner kodów QR',
      'sk': 'Skener QR kódov',
    },
    '5yvj63qk': {
      'en': 'Cancel',
      'pl': '',
      'sk': '',
    },
    '987tyc3g': {
      'en':
          'The task for a participant of the game is to visit selected places on car trail „Za woniom drzewa” and collect 20 wooden puzzles which are the reward for game. Participant, who should  sign regulation of the game,  receives decorative wooden box to collect the pieces of the puzzles. Regulations and the boxes are available in : tourist information w Brennej, ul Wyzwolenia 77 or in  Babinie 50 02952 Hrustin. ',
      'pl':
          'Zadaniem uczestnika zabawy jest odwiedzenie wybranych miejsc na samochodowym szlaku „Za woniom drzewa” i zebranie 20 drewnianych puzzli, które są nagrodą za grę. Uczestnik, który powinien podpisać regulamin gry, otrzymuje ozdobne drewniane pudełko do zbierania puzzli. Regulaminy i skrzynki dostępne są w: informacji turystycznej w Brennej, ul Wyzwolenia 77 lub w Babinie 50 02952 Hrustin.',
      'sk':
          'Úlohou účastníka hry je navštíviť vybrané miesta na autotrase „Za woniom drzewa“ a nazbierať 20 drevených hlavolamov, ktoré sú odmenou za hru. Účastník, ktorý by mal podpísať pravidlá hry, dostane dekoratívnu drevenú škatuľu na zbieranie dielikov puzzle. Predpisy a schránky sú k dispozícii na adrese: turistické informácie w Brennej, ul Wyzwolenia 77 alebo na Babinie 50 02952 Hruštin.',
    },
    'yy9on64e': {
      'en': 'Puzzle game',
      'pl': 'Gra Puzzle',
      'sk': 'Logická hra',
    },
  },
  // TracksPage
  {
    'xownb6s7': {
      'en': 'Page Title',
      'pl': 'Tytuł strony',
      'sk': 'Názov stránky',
    },
    'xwnafhlg': {
      'en': 'Tracks',
      'pl': 'Utwory',
      'sk': 'Skladby',
    },
  },
  // AttractionPage
  {
    'yskugjii': {
      'en': 'Home',
      'pl': 'Dom',
      'sk': 'Domov',
    },
  },
  // Header
  {
    '65nk4071': {
      'en': 'For the smell of wood',
      'pl': 'Za zapachem drewna',
      'sk': 'Pre vôňu dreva',
    },
  },
  // AttractionComponent
  {
    'ghddol8f': {
      'en': 'Cancel',
      'pl': 'Anulować',
      'sk': 'Zrušiť',
    },
  },
  // LanguageChoiceComponent
  {
    '4vqiv5kl': {
      'en': 'Select language',
      'pl': 'Wybierz język',
      'sk': 'Zvoľ jazyk',
    },
    'o0xuq2iy': {
      'en': 'English',
      'pl': 'język angielski',
      'sk': 'Angličtina',
    },
    '8g2xydjt': {
      'en': 'Slovak',
      'pl': 'słowacki',
      'sk': 'slovenský',
    },
    'lrzb17i6': {
      'en': 'Wrong',
      'pl': 'Zło',
      'sk': 'Nesprávne',
    },
    'y0s39oku': {
      'en': 'Close',
      'pl': 'Zamknąć',
      'sk': 'Zavrieť',
    },
  },
  // FilterAttraction
  {
    '6xr1oaxr': {
      'en': 'Any',
      'pl': 'Każdy',
      'sk': 'akýkoľvek',
    },
    '8pgtdbri': {
      'en': 'Family',
      'pl': 'Rodzina',
      'sk': 'Rodina',
    },
    'wumdlka5': {
      'en': 'Music',
      'pl': 'Muzyka',
      'sk': 'Hudba',
    },
    'm703msko': {
      'en': 'Outdoors',
      'pl': 'Na dworze',
      'sk': 'Vonku',
    },
    'blhchjem': {
      'en': 'AnyWheather',
      'pl': 'Dowolna pogoda',
      'sk': 'AnyWheather',
    },
    'vhrdr371': {
      'en': 'Ethno',
      'pl': 'Etno',
      'sk': 'Etno',
    },
    'jmkq2i9w': {
      'en': 'Livestyle',
      'pl': 'Styl życia',
      'sk': 'Živý štýl',
    },
    'v0t48eqp': {
      'en': 'Eco',
      'pl': 'eko',
      'sk': 'Eco',
    },
    'v2afkays': {
      'en': 'Cancel',
      'pl': 'Anulować',
      'sk': 'Zrušiť',
    },
  },
  // Miscellaneous
  {
    'q6psbwkx': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    'jiwkkfsf': {
      'en': 'Please gimme camera',
      'pl': 'Proszę daj mi aparat',
      'sk': 'Prosím, dajte mi fotoaparát',
    },
    'z8sd7vcc': {
      'en': 'Please gimme camera',
      'pl': 'Proszę daj mi aparat',
      'sk': 'Prosím, dajte mi fotoaparát',
    },
    '1ishi4b2': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    'q5sq4xcs': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    '1omqxodl': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    '4j0lg8sf': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    '0bs7m4u1': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    '11zutzkq': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    '24an6dmr': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    '697sko1x': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    'vcyhjl8d': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    '2j9km20a': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    'r4tijnri': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    '6hxrd87p': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    '1qgi6znk': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    'gmjyx7b3': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    'a4m05znz': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    'ekrtoon0': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    'pg125iqd': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    'r1p9bu7q': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    'v234gaco': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    '9yb8fhvv': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    'eydkrxdp': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    'g6becyz8': {
      'en': '',
      'pl': '',
      'sk': '',
    },
    '2bhgikr3': {
      'en': '',
      'pl': '',
      'sk': '',
    },
  },
].reduce((a, b) => a..addAll(b));
