class PokemonCard {
  String id, name, imageURL, set, series, attacks, weakness, type, resistance;

  PokemonCard(this.id, this.name, this.imageURL, this.set, this.series,
      this.attacks, this.weakness, this.type, this.resistance);

  PokemonCard.fromJSON(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imageURL = json['imageUrlHiRes'];
  }

  @override
  String toString() {
    return 'PokemonCard{id: $id, name: $name, imageURL: $imageURL}';
  }
}
