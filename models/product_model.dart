// lib/models/product_model.dart

class Product {
  final String title;
  final double price;
  final String category;
  final String image;
  final double rating;

  Product({
    required this.title,
    required this.price,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      title: json['title'],
      price: json['price'].toDouble(),
      category: json['category'],
      image: json['image'],
      rating: json['rating']['rate'].toDouble(),
    );
  }
}
