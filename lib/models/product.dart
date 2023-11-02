

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
      "assets/images/honda_click125_1.jpg",
      "assets/images/honda_click125_2.jpg",
      "assets/images/honda_click125_3.jpg",
      "assets/images/honda_click125_4.jpg",
    ],
    colors: [color1, color2, color3, color4], 
    title: "Honda Click 125",
    price: 250.99,
    description: description,
    rating: 4.8,
    isFavourate: true,
    isPopular: true, 
    id: 1,
  ),
  Product(
    images: [
      "assets/images/adv1.jpg",
    ],
    colors: [color1, color2, color3, color4],

    title: "HONDA ADV 160",
    price: 220.99,
    description: description,
    rating: 4.1,
    isFavourate: false,
    isPopular: true,
    id: 2,
  ),
  Product(
    images: [
      "assets/images/honda_pcx_1.webp",
    ],
    colors: [color1, color2, color3, color4],
    title: "Honda PCX160",
    price: 120.99,
    description: description,
    rating: 4.8,
    isFavourate: true,
    isPopular: false,
    id: 3,
  ),
  Product(
    images: [
      "assets/images/RS-125-3.jpg",
    ],
    colors: [color1, color2, color3, color4],
    title: "RS 125",
    price: 120.99,
    description: description,
    rating: 4.7,
    isFavourate: true,
    isPopular: false,
    id: 4,
  ),
    Product(
    images: [
      "assets/images/miogear.jpg",
    ],
    colors: [color1, color2, color3, color4],
    title: "Yamaha Mio Gear",
    price: 120.99,
    description: description,
    rating: 4.7,
    isFavourate: true,
    isPopular: false,
    id: 4,
  ),
];

const String description = 
  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's";