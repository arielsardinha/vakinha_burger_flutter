import 'dart:convert';

class OrderPix {
  String image;
  String code;
  double totalValue;

  OrderPix({required this.image, required this.code, required this.totalValue});

  factory OrderPix.fromRawJson(String str) =>
      OrderPix.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  OrderPix copyWidth({String? image, String? code, double? totalValue}) =>
      OrderPix(
        image: image ?? this.image,
        code: code ?? this.code,
        totalValue: totalValue ?? this.totalValue,
      );

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'code': code,
      'totalValue': totalValue,
    };
  }

  factory OrderPix.fromMap(Map<String, dynamic> map) {
    return OrderPix(
      image: map['image'] ?? '',
      code: map['code'] ?? '',
      totalValue: (map['totalValue'] as double?)?.toDouble() ?? 0.0,
    );
  }
}
