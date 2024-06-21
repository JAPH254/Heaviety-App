class Product {
  final String name;
  final String description;
  final String imageUrl;
  final String owner;

  Product({required this.name, required this.description, required this.imageUrl, required this.owner});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      description: json['description'],
      imageUrl: json['image_url'],
      owner: json['owner'],
    );
  }
}
