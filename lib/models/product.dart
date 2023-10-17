

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
      "assets/images/TAUREX_120ML__1104.png",
      "assets/images/TAUREX_240ML__28038.png",
    ],
    colors: [color1, color2, color3, color4], 
    title: "Taurex Syrup",
    price: 250.99,
    description: description,
    rating: 4.8,
    isFavourate: true,
    isPopular: true, 
    id: 1,
  ),
  Product(
    images: [
      "assets/images/ascorbi-acid-zinc__77556.png",
    ],
    colors: [color1, color2, color3, color4],

    title: "Ascorbic Acid+Zinc Cap M&D",
    price: 220.99,
    description: description,
    rating: 4.1,
    isFavourate: false,
    isPopular: true,
    id: 2,
  ),
  Product(
    images: [
      "assets/images/003813__51498.png",
    ],
    colors: [color1, color2, color3, color4],
    title: "Poten-Cee 500mg",
    price: 120.99,
    description: description,
    rating: 4.8,
    isFavourate: true,
    isPopular: false,
    id: 3,
  ),
  Product(
    images: [
      "assets/images/004454__61462.png",
    ],
    colors: [color1, color2, color3, color4],
    title: "Solmux 500mg",
    price: 120.99,
    description: description,
    rating: 4.7,
    isFavourate: true,
    isPopular: false,
    id: 4,
  ),
    Product(
    images: [
      "assets/images/007421__59362.png",
    ],
    colors: [color1, color2, color3, color4],
    title: "Alaxan FR 200mg",
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