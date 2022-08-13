import 'package:flutter/material.dart';

import '../../widget/custom_app_bar.dart';
import '../../widget/custom_navbar.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';

  static Route route(){
    
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_)=>CatalogScreen());
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: CustomAppBar(title: 'Catalog',),
      
      bottomNavigationBar: CustomNavBar(),
      
    );
  }
}