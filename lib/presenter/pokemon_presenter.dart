import 'package:flutter/foundation.dart';
import 'package:pokedex/model/pokemon.dart';
import 'package:pokedex/model/repository/pokemon_repository.dart';

class PokemonPresenter with ChangeNotifier {
  final PokemonRepository repository;

  PokemonPresenter(this.repository);
  List<Pokemon> pokemonList = [];
  void getPokemons() async {
    pokemonList = await repository.getPokemons();
    notifyListeners();
  }
}
