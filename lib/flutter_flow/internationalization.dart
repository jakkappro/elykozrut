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
    'z7shxg8r': {
      'en': 'Hello World',
      'pl': '',
      'sk': '',
    },
    'nq8c6utz': {
      'en': 'Attractions',
      'pl': 'Wdzięki kobiece',
      'sk': 'Atrakcie',
    },
  },
  // InfoPage
  {
    'gx27qubs': {
      'en': 'Hello World',
      'pl': '',
      'sk': '',
    },
    'cjfsc01v': {
      'en': 'Hello World',
      'pl': '',
      'sk': '',
    },
    'gpl510i8': {
      'en': 'About',
      'pl': 'O',
      'sk': 'O',
    },
  },
  // PuzzleGamePage
  {
    'okf7c4xt': {
      'en': '0/20',
      'pl': '',
      'sk': '',
    },
    '34oifbjw': {
      'en': 'QR Code Scanner',
      'pl': '',
      'sk': '',
    },
    '987tyc3g': {
      'en':
          'asdjzhbxvlkcjbvhnzlxkcjvnzxclkjvnzlkjxvlkzxjcbvlzkjxcbvlkzjxcbvlkzjxcbvlkzjxcbvlkzjxcbvlkzjxcbnvlkzxmncbvlzkxnmcbvlzkxncmbvlzkxcjnvbzxlkjcvbzlkjxcbvlzkxjcbvlzkjxcbvlkzxjcbvlkzxjcbvlkzjxbcvlkjzxbcvlkzxjbcvlkjzbxcvlkjzxbcvlkjzbxclkvjbzxclkvjbzxlkcjvbzxlkjcvbzkljxcbvlkjzxcbvlkzxjcbvlkzjxcbvlkzjxbcvlkjznxcvlkjnzxclkvjnzxclkvjnzxclkvmnzxclkmvnzxlkcvjnzxclkjvnzxckjlvxzclkjh',
      'pl': '',
      'sk': '',
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
    'n5utq7g9': {
      'en': 'Any',
      'pl': '',
      'sk': '',
    },
    'pw7u908z': {
      'en': 'Family',
      'pl': '',
      'sk': '',
    },
    'w3ej8yao': {
      'en': 'Music',
      'pl': '',
      'sk': '',
    },
    '2v4cg7ad': {
      'en': 'Outdoors',
      'pl': '',
      'sk': '',
    },
    'mb60dyki': {
      'en': 'AnyWheather',
      'pl': '',
      'sk': '',
    },
    'l6sw16eg': {
      'en': 'Ethno',
      'pl': '',
      'sk': '',
    },
    'sw6pewb4': {
      'en': 'Livestyle',
      'pl': '',
      'sk': '',
    },
    'hut6y0io': {
      'en': 'Eco',
      'pl': '',
      'sk': '',
    },
    'nn6pu691': {
      'en': 'Cancel',
      'pl': '',
      'sk': '',
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
