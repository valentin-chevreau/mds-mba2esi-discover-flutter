import 'package:flutter/material.dart';
import 'package:hello_world_flutter/model/pokemon_card_model.dart';
import 'package:hello_world_flutter/rest/pokemon_api.dart';
import 'package:hello_world_flutter/widget/pokemon_item_widget.dart';

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
            return PokemonItemWidget(card);
          });
    }
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
