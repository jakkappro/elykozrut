import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

List<AttractionStruct> getArrayOfAttractions() {
  var ret = <AttractionStruct>[];

  ret.add(AttractionStruct(
    name: "Turistický park",
    address: "Malinowa 2b, 43-438 Brenna, Poland",
    addressLocation: LatLng(49.721188, 18.918688),
    phoneNumber: "+48334740601",
    url: "https://turysta.brenna.org.pl/pl/park-turystyki",
    attractionIds: [0, 1, 2, 3, 4],
  ));

  ret.add(AttractionStruct(
    name: "Kozia farma",
    address: "Sportowa 3, 43-438 Brenna, Poland",
    addressLocation: LatLng(49.719861, 18.921944),
    phoneNumber: "+48513422143",
    url: "http://koziazagroda.pl",
    attractionIds: [0, 1, 6, 5],
  ));

  ret.add(AttractionStruct(
    name: "Beskydský dom byliniek Przytulia",
    address: "Wyzwolenia 69, 43-438 Brenna, Poland",
    addressLocation: LatLng(49.722582, 18.912698),
    phoneNumber: "+48334000021",
    url: "https://domzielin.eu",
    attractionIds: [0, 1, 8, 6, 3, 5, 4],
  ));

  ret.add(AttractionStruct(
    name: "Cezhraničná záhrada byliniek",
    address: "Górecka 224, 43-438 Brenna, Poland",
    addressLocation: LatLng(49.727028, 18.898476),
    phoneNumber: "+48338586971",
    url: "https://turysta.brenna.org.pl/pl/ogrod-zielin-z-placem-zabaw",
    attractionIds: [0, 1, 8, 4],
  ));

  ret.add(AttractionStruct(
    name: "Poľovnícky zámoček „Konczakówka”",
    address: "Głębiec 26, 43-438 Brenna, Poland",
    addressLocation: LatLng(49.748698, 18.898081),
    phoneNumber: "+48338536496",
    url: "https://turysta.brenna.org.pl/pl/dworek-mysliwski-konczakowka",
    attractionIds: [0, 6, 5],
  ));

  ret.add(AttractionStruct(
    name: "Chlebová chata",
    address: "Breńska 113, 43-436 Górki Małe, Poland",
    addressLocation: LatLng(49.7582559, 18.8664292),
    phoneNumber: "+48338539630",
    url: "http://www.chlebowachata.pl",
    attractionIds: [0, 1, 6, 5],
  ));

  ret.add(AttractionStruct(
    name: "Cezhraničná zóna kultúry",
    address: "Górki Wielkie, ul Sportowa 8, Poland",
    addressLocation: LatLng(49.774006, 18.849722),
    phoneNumber: "+48338586971",
    url: "https://turysta.brenna.org.pl/pl/transgraniczna-strefa-kultury-2",
    attractionIds: [0, 1, 2, 7, 4],
  ));

  ret.add(AttractionStruct(
    name: "Centrum kultúry a umenia „Dwór Kossaków”",
    address: "Stary Dwór 4, 43-436 Górki Wielkie, Poland",
    addressLocation: LatLng(49.78177, 18.827916),
    phoneNumber: "+48338510351",
    url: "http://www.dworkossakow.pl",
    attractionIds: [0, 1, 7, 5],
  ));

  ret.add(AttractionStruct(
    name: "Prírodná pamiatka Dub kráľa Sobieskeho",
    address: "43-450 Ustroń, ul.Daszyńskiego, Poland",
    addressLocation: LatLng(49.72703, 18.806334),
    phoneNumber: "+48338542653",
    url: "https://visit.ustron.pl/pl/dab-sobieskiego,578",
    attractionIds: [0, 8, 4],
  ));

  ret.add(AttractionStruct(
    name: "Aleja legiend a podaní",
    address: "bulwar Księżycowy, 43-460 Wisła, Poland",
    addressLocation: LatLng(49.654989, 18.861402),
    phoneNumber: "+48790262829",
    url: "https://www.wisla.pl/turysta/attractions/138",
    attractionIds: [0, 2, 4],
  ));

  ret.add(AttractionStruct(
    name: "Jakubská cesta",
    address: "Kolorowa 1, 43-370 Szczyrk, Poland",
    addressLocation: LatLng(49.718757, 19.035103),
    phoneNumber: "+48338178429",
    url: "http://www.szczyrk.wiara.org.pl",
    attractionIds: [0, 5, 4],
  ));

  ret.add(AttractionStruct(
    name: "Dymná chata Kawuloka",
    address: "Istebna 163, 43-470 Istebna,Wojtosze, Poland",
    addressLocation: LatLng(49.560523, 18.915318),
    phoneNumber: "+48790262829",
    url: "http://chatakawuloka.eu",
    attractionIds: [0, 1, 6, 5],
  ));

  ret.add(AttractionStruct(
    name: "Múzeum Stará Chalupa",
    address: "Piastowska 1, 34-360 Milówka, Poland",
    addressLocation: LatLng(49.561733, 19.087634),
    phoneNumber: "+48338637399",
    url: "http://gok.milowka.pl",
    attractionIds: [0, 6, 5],
  ));

  ret.add(AttractionStruct(
    name: "Drevené hračky Łoboz",
    address: "Pewel Wielka 390, 34-340 Jeleśnia, Poland",
    addressLocation: LatLng(49.670707, 19.391867),
    phoneNumber: "+48338747003",
    url: "https://jelesnia.naszgok.pl/zabawka-ludowa/g,marian-i-wieslawa-loboz",
    attractionIds: [0, 1, 2, 5],
  ));

  ret.add(AttractionStruct(
    name: "Izba Cechu slovenských gajdošov",
    address: "Oravská Polhora 565, 029 47 Oravská Polhora",
    addressLocation: LatLng(49.544961, 19.369119),
    phoneNumber: "+421903044033",
    url: "https://csg.gajdy.sk",
    attractionIds: [0, 3, 5],
  ));

  ret.add(AttractionStruct(
    name: "Hviezdoslavova hájovňa",
    address: "029 47 Oravská Polhora",
    addressLocation: LatLng(49.541162, 19.499904),
    phoneNumber: "+421907114021",
    url: "https://www.oravskemuzeum.sk/expozicie/literarne-expozicie/hajovna",
    attractionIds: [0, 6, 7, 5],
  ));

  ret.add(AttractionStruct(
    name: "Slanický ostrov umenia",
    address: "029 01 Námestovo",
    addressLocation: LatLng(49.40724, 19.517058),
    phoneNumber: "+421905915108",
    url: "http://www.oravskagaleria.sk/slanicky_ostrov_umenia.html",
    attractionIds: [0, 6, 4],
  ));

  ret.add(AttractionStruct(
    name: "Vavrekova lipa",
    address: "Obec Vavrečka 203, 029 01",
    addressLocation: LatLng(49.382081, 19.469233),
    phoneNumber: "+421905243223",
    url:
        "https://www.vavrecka.sk/obec/zaujimavosti-obce-1/400-rocna-vavrekova-lipa-22sk.html",
    attractionIds: [0, 8, 4],
  ));

  ret.add(AttractionStruct(
    name: "Galéria ľudového rezbárstva",
    address: "Babín 372, 029 52 Hruštín",
    addressLocation: LatLng(49.330478, 19.386078),
    phoneNumber: "043/5577207",
    url:
        "https://www.babin.sk/obec-2/udalosti-v-obci/kultura/stala-expozicia-ludoveho-rezbarstva",
    attractionIds: [0, 2, 4],
  ));

  ret.add(AttractionStruct(
    name: "Expozícia ľudového rezbára Štefana Siváňa",
    address: "Babín 50, 029 52 Hruštín",
    addressLocation: LatLng(49.332194, 19.37975),
    phoneNumber: "+421917773541",
    url:
        "https://www.babin.sk/obec-2/za-vonou-dreva/expozicia-ludoveho-rezbara-stefana-sivana",
    attractionIds: [0, 2, 4],
  ));

  return ret;
}

double? getAmountOfScannedCodes(List<QRCodeScannedStruct> codes) {
  var ret = 0.0;

  for (var code in codes) {
    if (code.scanned) {
      ret += 1.0;
    }
  }

  if (ret == 0.0) {
    return 0;
  }

  return 20.0 / ret;
}
