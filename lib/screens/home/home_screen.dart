import 'package:flutter/material.dart';

import '../../widget/custom_app_bar.dart';
import '../../widget/custom_navbar.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route(){
    
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_)=>HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: CustomAppBar(title: 'Ecommerce App',),
      
      bottomNavigationBar: CustomNavBar(),
      
    );
  }
}