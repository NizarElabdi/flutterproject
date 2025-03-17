class Car {
  final String name;
  final String imageUrl;
  final double price;

  Car({
    required this.name,
    required this.imageUrl,
    required this.price,
  });

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      name: json['name'],
      imageUrl: json['imageUrl'],
      price: json['price'].toDouble(),
    );
  }
}
