import 'dart:convert';
import '../pokemon.dart';
import 'package:http/http.dart' as http;

class PokemonRepository {
  Future<List<Pokemon>> getPokemons() async {
    Uri url = Uri.parse('http://104.131.18.84/pokemon/?limit=50&page=0');

    List<Pokemon> pokemonList = [];

    final result = await http.get(url);
    if (result.statusCode == 200) {
      Map json = const JsonDecoder().convert(result.body);

      for (var element in (json['data'] as List)) {
        pokemonList.add(Pokemon.fromJson(element));
      }
      return pokemonList;
    } else {
      return [];
    }
  }
}
