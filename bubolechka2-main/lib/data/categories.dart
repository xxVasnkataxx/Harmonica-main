import 'package:Harmonica/data/cards.dart';

import '../models/bubo_category.dart';


///
/// This file provides the original category data
///

/// Original labels in german and bulgarian, english added as last value
const labels = [
  ["1", "Mikrofon", "Микрофон", "Microphone", "Micrófono"],
  ["2", "Klavier", "Пиано", "Piano", "piano"],
  ["3", "Trompete", "Тромпет", "Trumpet", "trompeta"],
  ["4", "Saxophon", "Саксофон", "Saxophone", "saxofón"],
  ["5", "Tuba", "Туба", "Tuba", "Tuba"],
  ["6", "Schlagzeug", "Барабани", "Drums", "Batería"],
  ["7", "Becken", "Чинели", "Cymbals", "Platillos"],
  ["8", "Gitarre", "Китара", "Guitar", "guitarra"],
  ["9", "Synthesizer", "Синтезатор", "synthesizer", "sintetizador"],
  ["10", "Organ", "Орган", "Organ", "Organo"],
  ["11", "Handpan", "пан за ръце", "Handpan", "Handpan"],
  ["12", "Maracas", "Маракас", "Maracas", "Maracas"],
  ["13", "Harfe", "Арфа", "Harp", "Arpa"],
  ["14", "Geige", "Цигулка", "Violin", "violín"],
  ["15", "Klarinette", "Кларинет", "Clarinet", "Clarinete"],
  ["16", "Dreieck", "Триъгълник", "Triangle", "Triángulo"],
  ["17", "Mundharmonika", "Хармоника", "Harmonica", "Harmónica"],
  ["18", "Dudelsack", "Гайда", "Bagpipe", "Cornamusa"]
];

///
/// Labels transformed into BuboCategories
///
/// This list can be used in the application for rendering the categories
///
List<BuboCategory> buboCategories = labels.map((categoryLabels) {
  return BuboCategory(
      int.parse(categoryLabels[0]),
      'assets/categories/cat_${categoryLabels[1].toLowerCase().replaceAll(' ', '_')}@3x.png',
      {
        'us': categoryLabels[3],
        'de': categoryLabels[1],
        'bg': categoryLabels[2],
        'es': categoryLabels[4]
      },
      cards
          .where(
            (card) => card.categoryId == int.parse(categoryLabels[0]),
          )
          .toList());
}).toList();
