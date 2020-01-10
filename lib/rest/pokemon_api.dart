//This is an helper to perform http request
import 'dart:convert';

import 'package:hello_world_flutter/model/pokemon_card_model.dart';
import 'package:http/http.dart' as http;

class PokemonAPI {
  static final String pokemonListURL = 'https://api.pokemontcg.io/v1/cards';

  static Future<List<PokemonCard>> getPokemonCards() async {
    var response = await http.get(pokemonListURL);

    print('response body ' + response.body);

    Map<String, dynamic> mainMapResponse = jsonDecode(response.body);
    print('response Map ' + mainMapResponse.toString());

    // tableau de cartes
    List<dynamic> cardsJSON = mainMapResponse['cards'];

    // liste d'objects
    List<PokemonCard> cards = [];
    for (dynamic cardJSON in cardsJSON) {
      print('This is a card ' + cardJSON.toString());
      cards.add(PokemonCard.fromJSON(cardJSON));
    }
    return cards;
  }
}
