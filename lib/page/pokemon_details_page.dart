import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hello_world_flutter/model/pokemon_card_model.dart';

// ignore: must_be_immutable
class PokemonDetailsPage extends StatelessWidget {
  final PokemonCard pokemon;
  bool _isLoading = false;

  PokemonDetailsPage(this.pokemon);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
      ),
      body: _buildDependingOnContext(),
    );
  }

  Widget _buildDependingOnContext() {
    if (_isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Center(
        child: Row(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              pokemon.name ?? 'Attack nul',
              style: TextStyle(color: Colors.brown),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CachedNetworkImage(imageUrl: pokemon.imageURL),
          ),
        ]),
      );
    }
  }
}
