import 'dart:convert';

class ProductModel {
  int id;
  String name, description;
  double price;
  String image;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  factory ProductModel.fromRowJson(String str) =>
      ProductModel.fromMap(json.decode(str));

  factory ProductModel.fromMap(Map<String, dynamic> json) => ProductModel(
        id: json['id'] ?? 0,
        name: json['name'] ?? '',
        description: json['description'] ?? '',
        price: json['price'] ?? '',
        image: json['image'] ?? '',
      );

  String toJson() => json.encode(toMap());

  Map<String, Object> toMap() => {
        'id': id,
        'name': name,
        'description': description,
        'price': price,
        'image': image,
      };
}
