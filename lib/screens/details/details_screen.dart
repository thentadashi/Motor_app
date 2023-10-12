import 'package:flutter/material.dart';
import 'package:pharma_shop/models/product.dart';
import 'package:pharma_shop/screens/details/components/body.dart';
import 'package:pharma_shop/screens/details/components/custom_app_bar.dart';


 class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  static String routerName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments? arguments = ModalRoute.of(context)?.settings.arguments as ProductDetailsArguments?;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(rating: arguments!.product.rating),
      body: Body(product: arguments.product),
    );
  }
}


class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({required this.product});
}