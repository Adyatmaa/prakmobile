class Photo {
  final String type;
  final String tags;
  final String img;

  Photo({
    required this.type,
    required this.tags,
    required this.img,
  });
  factory Photo.fromJason(Map<String, dynamic> json) {
    return Photo(
        type: json['type'], tags: json['tags'], img: json['largeImageURL']);
  }
}
