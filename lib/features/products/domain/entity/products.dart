

class Products{
  int id;
  String title;
  double price;
  String image;

  Products({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
  });

  int get productId=>id;
  String get productTitle=>title;
  double get productPrice=> price;
  String get productImage=>image;
}