import 'package:flutter/material.dart';
import 'package:text_project/screens/models/category_model.dart';
import 'package:text_project/screens/models/product_model.dart';
import 'package:text_project/widget/widgets.dart';


class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';

  static Route route({required CategoryModel categoryModel}){
    
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_)=>CatalogScreen(categoryModel: categoryModel,));
  }

  final CategoryModel? categoryModel;

  const CatalogScreen({ this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: const CustomAppBar(title: 'Catalog',),
      
      bottomNavigationBar: const CustomNavBar(),
      body: GridView.builder(
        itemCount: ProductModel.products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.2, mainAxisSpacing: 20), 
      itemBuilder: (context, index) => ProductCard(productModel: ProductModel.products[index]),),
      
    );
  }
}