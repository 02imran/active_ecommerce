import 'package:flutter/material.dart';

import '../../widget/custom_app_bar.dart';
import '../../widget/custom_navbar.dart';

class WishListScreen extends StatelessWidget {
  static const String routeName = '/wishlist';

  static Route route(){
    
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_)=>WishListScreen());
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: CustomAppBar(title: 'Wishlist',),
      
      bottomNavigationBar: CustomNavBar(),
      
    );
  }
}