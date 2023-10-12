import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharma_shop/size_config.dart';



class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"Icon": "assets/icons/Flash Icon.svg", "text": "Flash deal"},
      {"Icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
      {"Icon": "assets/icons/Game Icon.svg", "text": "Game"},
      {"Icon": "assets/icons/Gift Icon.svg", "text": "Gift"},
      {"Icon": "assets/icons/Discover.svg", "text": "Discover"},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length, 
            (index) => CategoryCard(
              icon: categories[index]["Icon"], 
              text: categories[index]["text"], 
              press: () {},
            ),
          ),
        ],
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
                padding: EdgeInsets.all(getProportionateScreenWidth(30)),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
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
