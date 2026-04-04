class ProductModel {
  final int id;
  final String name;
  final String description;
  final double price;
  final String currency;
  final String currencySymbol;
  final String image;

  // 🔹 Constructor
  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.currency,
    required this.currencySymbol,
    required this.image,
  });

  // 🔹 Factory desde JSON
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: (json['price'] as num).toDouble(),
      currency: json['currency'],
      currencySymbol: json['currency_symbol'],
      image: json['image'],
    );
  }

  // 🔹 Convertir a JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'currency': currency,
      'currency_symbol': currencySymbol,
      'image': image,
    };
  }

  // 🔹 copyWith
  ProductModel copyWith({
    int? id,
    String? name,
    String? description,
    double? price,
    String? currency,
    String? currencySymbol,
    String? image,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      currency: currency ?? this.currency,
      currencySymbol: currencySymbol ?? this.currencySymbol,
      image: image ?? this.image,
    );
  }
}