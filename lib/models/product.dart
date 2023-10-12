

class Product {
  final String  title, description;
  final List<String> images;
  final List<String> colors;
  final double rating, price;
  final bool isFavourate, isPopular;
  final int id;

  Product({
    required this.id, 
    required this.title, 
    required this.description, 
    required this.images, 
    required this.colors, 
    required this.rating, 
    required this.price, 
    required this.isFavourate, 
    required this.isPopular, 
  });

}

String color1 = '0xFFF6625E';
String color2 = '0xFF836DB8';
String color3 = '0xFFDECB9C';
String color4 = '0xFFFFFFFF';

// our demo products

List<Product> demoProducts = [
  Product(
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [color1, color2, color3, color4], 
    title: "Wireless Controler for PS4",
    price: 250.99,
    description: description,
    rating: 4.8,
    isFavourate: true,
    isPopular: true, 
    id: 1,
  ),
  Product(
    images: [
      "assets/images/glap.png",
    ],
    colors: [color1, color2, color3, color4],

    title: "Gloves XC Omega Polygon",
    price: 220.99,
    description: description,
    rating: 4.1,
    isFavourate: false,
    isPopular: true,
    id: 2,
  ),
  Product(
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [color1, color2, color3, color4],
    title: "Logitech Headphone",
    price: 120.99,
    description: description,
    rating: 4.8,
    isFavourate: true,
    isPopular: false,
    id: 3,
  ),
  Product(
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [color1, color2, color3, color4],
    title: "Nike Sport White - Man Pants",
    price: 120.99,
    description: description,
    rating: 4.7,
    isFavourate: true,
    isPopular: false,
    id: 4,
  ),
];

const String description = 
  "Wireless controller for PS4 gives you what you want in your gaming from over precision";