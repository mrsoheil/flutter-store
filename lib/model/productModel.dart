class Product {
  final String name;
  final String price;
  final String image;

  Product({required this.name, required this.price, required this.image});
}

List<Product> productList = [
  Product(name: "Dr Soheil", price: "900", image: "assets/images/dr.png"),
  Product(name: "Dr Amir", price: "300", image: "assets/images/dr.png"),
  Product(name: "Dr Reza", price: "500", image: "assets/images/dr.png"),
  Product(name: "Dr Ali", price: "1000", image: "assets/images/dr.png"),
];