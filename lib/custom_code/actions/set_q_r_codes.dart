// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future setQRCodes() async {
  // Add your function code here!
  var codes = FFAppState().scannedCodes;

  if (codes == null || codes.isEmpty) {
    // create it here
    codes.add(QRCodeScannedStruct(
      link: "https://turysta.brenna.org.pl/pl/park-turystyki ",
      scanned: false,
      name: "Turistický park",
    ));

    codes.add(QRCodeScannedStruct(
      link: "http://koziazagroda.pl",
      scanned: false,
      name: "Kozia farma",
    ));

    codes.add(QRCodeScannedStruct(
      link: "https://domzielin.eu",
      scanned: false,
      name: "Beskydský dom byliniek Przytulia",
    ));

    codes.add(QRCodeScannedStruct(
      link: "https://turysta.brenna.org.pl/pl/ogrod-zielin-z-placem-zabaw",
      scanned: false,
      name: "Cezhraničná záhrada byliniek",
    ));

    codes.add(QRCodeScannedStruct(
      link: "https://turysta.brenna.org.pl/pl/dworek-mysliwski-konczakowka",
      scanned: false,
      name: "Poľovnícky zámoček „Konczakówka”",
    ));

    codes.add(QRCodeScannedStruct(
      link: "http://www.chlebowachata.pl",
      scanned: false,
      name: "Chlebová chata",
    ));

    codes.add(QRCodeScannedStruct(
      link: "https://turysta.brenna.org.pl/pl/transgraniczna-strefa-kultury-2",
      scanned: false,
      name: "Cezhraničná zóna kultúry",
    ));

    codes.add(QRCodeScannedStruct(
      link: "http://www.dworkossakow.pl",
      scanned: false,
      name: "Centrum kultúry a umenia „Dwór Kossaków”",
    ));

    codes.add(QRCodeScannedStruct(
      link: "https://visit.ustron.pl/pl/dab-sobieskiego,578",
      scanned: false,
      name: "Prírodná pamiatka Dub kráľa Sobieskeho",
    ));

    codes.add(QRCodeScannedStruct(
      link: "https://www.wisla.pl/turysta/attractions/138",
      scanned: false,
      name: "Aleja legiend a podaní",
    ));

    codes.add(QRCodeScannedStruct(
      link: "http://www.szczyrk.wiara.org.pl",
      scanned: false,
      name: "Jakubská cesta",
    ));

    codes.add(QRCodeScannedStruct(
      link: "http://chatakawuloka.eu",
      scanned: false,
      name: "Dymná chata Kawuloka",
    ));

    codes.add(QRCodeScannedStruct(
      link: "http://gok.milowka.pl",
      scanned: false,
      name: "Múzeum Stará Chalupa",
    ));

    codes.add(QRCodeScannedStruct(
      link:
          "https://jelesnia.naszgok.pl/zabawka-ludowa/g,marian-i-wieslawa-loboz",
      scanned: false,
      name: "Drevené hračky Łoboz",
    ));

    codes.add(QRCodeScannedStruct(
      link: "https://csg.gajdy.sk",
      scanned: false,
      name: "Izba Cechu slovenských gajdošov",
    ));

    codes.add(QRCodeScannedStruct(
      link:
          "https://www.oravskemuzeum.sk/expozicie/literarne-expozicie/hajovna",
      scanned: false,
      name: "Hviezdoslavova hájovňa",
    ));

    codes.add(QRCodeScannedStruct(
      link: "http://www.oravskagaleria.sk/slanicky_ostrov_umenia.html",
      scanned: false,
      name: "Slanický ostrov umenia",
    ));

    codes.add(QRCodeScannedStruct(
      link:
          "https://www.vavrecka.sk/obec/zaujimavosti-obce-1/400-rocna-vavrekova-lipa-22sk.html",
      scanned: false,
      name: "Vavrekova lipa",
    ));

    codes.add(QRCodeScannedStruct(
      link:
          "https://www.babin.sk/obec-2/udalosti-v-obci/kultura/stala-expozicia-ludoveho-rezbarstva",
      scanned: false,
      name: "Galéria ľudového rezbárstva",
    ));

    codes.add(QRCodeScannedStruct(
      link:
          "https://www.babin.sk/obec-2/za-vonou-dreva/expozicia-ludoveho-rezbara-stefana-sivana",
      scanned: false,
      name: "Expozícia ľudového rezbára Štefana Siváňa",
    ));

    FFAppState().scannedCodes = codes;
  }
}
