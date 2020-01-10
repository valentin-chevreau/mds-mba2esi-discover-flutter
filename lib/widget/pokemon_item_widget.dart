import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hello_world_flutter/model/pokemon_card_model.dart';

class PokemonItemWidget extends StatefulWidget {
  final PokemonCard card;

  PokemonItemWidget(
    this.card,
  );

  @override
  _PokemonItemWidgetState createState() => _PokemonItemWidgetState();
}

class _PokemonItemWidgetState extends State<PokemonItemWidget> {
  @override
  Widget build(BuildContext context) {
    var _id = widget.card.id;
    var _name = widget.card.name;
    var _imageURL = widget.card.imageURL;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          CachedNetworkImage(
            height: 48.0,
            width: 48.0,
            imageUrl: _imageURL,
          ),
          Container(width: 18.0),
          Expanded(
            child: Text(
              _name,
              style: TextStyle(fontSize: 21.0),
            ),
          ),
          Text(
            '#' + _id,
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
