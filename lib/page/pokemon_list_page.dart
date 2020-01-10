import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hello_world_flutter/model/pokemon_card_model.dart';
import 'package:hello_world_flutter/rest/pokemon_api.dart';

class PokemonListPage extends StatefulWidget {
  @override
  _PokemonListPageState createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  bool _isLoading = false;
  List<PokemonCard> _cards = [];

  @override
  void initState() {
    super.initState();
    _loadsCard();
  }

  // PokemonCard _currentPokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon List'),
        centerTitle: true,
      ),
      body: _buildBodyDependingOnContext(),
    );
  }

  Widget _buildBodyDependingOnContext() {
    if (_isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return ListView.builder(
          itemCount: _cards.length,
          itemBuilder: (context, index) {
            PokemonCard card = _cards[index];
            return _buildPokemonItem(card);
          });
    }
  }

  Widget _buildPokemonItem(PokemonCard card) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          CachedNetworkImage(
            height: 48.0,
            width: 48.0,
            imageUrl: card.imageURL,
          ),
          Container(width: 18.0),
          Expanded(
            child: Text(
              card.name,
              style: TextStyle(fontSize: 21.0),
            ),
          ),
          Text(
            '#' + card.id,
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }

  _loadsCard() async {
    _isLoading = true;
    List<PokemonCard> cards = await PokemonAPI.getPokemonCards();

    setState(() {
      _cards = cards;
      _isLoading = false;
    });
  }
}
