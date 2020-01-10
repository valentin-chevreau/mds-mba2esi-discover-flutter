class PokemonCard {
  String id;
  String name;
  String imageURL;

  PokemonCard(this.id, this.name, this.imageURL);

  PokemonCard.fromJSON(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imageURL = json['imageUrl'];
  }

  @override
  String toString() {
    return 'PokemonCard{id: $id, name: $name, imageURL: $imageURL}';
  }
}
