import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:text_project/screens/models/category_model.dart';
import 'package:text_project/screens/models/product_model.dart';

import '../../widget/custom_app_bar.dart';
import '../../widget/custom_navbar.dart';
import '../../widget/hero_carosel_widget.dart';
import '../../widget/product_carosel.dart';
import '../../widget/section_title.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route(){
    
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_)=>HomeScreen());
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: const CustomAppBar(title: 'Ecommerce App',),
      
      bottomNavigationBar: const CustomNavBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: false,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: CategoryModel.categiries.map((category) => HeroCaroselCard(categoryModel: category,)).toList(),
          ),
          const SizedBox(height: 20,),
          const SectionHeading(title: 'Recommended',),
          const SizedBox(height: 20,),

          ProductCarosel(product: ProductModel.products.where((element) => element.isRecommended!).toList(),),
          const SizedBox(height: 20,),
          const SectionHeading(title: 'Popular',),
          const SizedBox(height: 20,),
          ProductCarosel(product: ProductModel.products.where((element) => element.isPopular!).toList(),),

        ],
      ),
   
      
    );
  }
  
}







