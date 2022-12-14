import 'package:flutter/material.dart';

import '../../widget/custom_app_bar.dart';
import '../../widget/custom_navbar.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  static Route route(){
    
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_)=>CartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: CustomAppBar(title: 'Cart',),
      
      bottomNavigationBar: CustomNavBar(),
      
    );
  }
}