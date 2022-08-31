

import 'package:flutter/material.dart';
import 'package:text_project/widget/product_card.dart';

import '../screens/models/product_model.dart';

class ProductCarosel extends StatelessWidget {
  final List<ProductModel> product;
  const ProductCarosel({
    Key? key, required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 152,width: double.infinity, child: ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: ProductModel.products.length,
      itemBuilder: (context, index) => ProductCard(productModel: product[index]),),);
  }
}