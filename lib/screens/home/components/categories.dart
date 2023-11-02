import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:Motorcycle_shop_app/size_config.dart';



class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"Icon": "assets/icons/Honda-Logo.wine.svg", "text": "Honda"},
      {"Icon": "assets/icons/Suzuki-Logo.wine.svg", "text": "Suzuki"},
      {"Icon": "assets/icons/Kawasaki_Heavy_Industries-Logo.wine.svg", "text": "Kwasaki"},
      {"Icon": "assets/icons/yamaha.svg", "text": "Yamaha"},
      {"Icon": "assets/icons/Denso-Logo.wine.svg", "text": "Denso"},
      {"Icon": "assets/icons/Yokohama_Rubber_Company-Logo.wine.svg", "text": "Denso"},
      {"Icon": "assets/icons/Keihin_Corporation-Logo.wine.svg", "text": "Denso"},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(50)),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(
              categories.length,
              (index) => Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: CategoryCard(
                  icon: categories[index]["Icon"],
                  text: categories[index]["text"],
                  press: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon, 
    required this.text, 
    required this.press,
  });

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(120),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio:1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            const SizedBox(height: 5,),
            Text(text, textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}
