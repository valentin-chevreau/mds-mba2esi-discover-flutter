class Cat {
  String imageURL;

  Cat(this.imageURL);

  Cat.fromJson(Map<String, dynamic> json) {
    imageURL = json['file'];
  }

  @override
  String toString() {
    return 'Cat{imageURL: $imageURL}';
  }
}
