import 'dart:convert';

class Tutor {
  final String name;
  final String description;
  final List<String> images;
  final String category;

  Tutor(
      {required this.name,
      required this.description,
      required this.images,
      required this.category});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'images': images,
      'category':category,
    };
  }

  factory Tutor.fromMap(Map<String, dynamic> map) {
    return Tutor(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      images: List<String>.from(map['images']),
      category: map['category']?? '',
    );
  }

  String toJson() => json.encode(toMap());
  factory Tutor.fromJson(String source) => Tutor.fromMap(json.decode(source));
}
