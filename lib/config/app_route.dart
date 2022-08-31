import 'package:flutter/material.dart';
import 'package:text_project/screens/models/category_model.dart';
import 'package:text_project/screens/screens.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings){
    print('This is route ${settings.name}');

    switch (settings.name){
      case '/':
        return HomeScreen.route();
      
      case CartScreen.routeName:
        return CartScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route();
      case WishListScreen.routeName:
        return WishListScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route(categoryModel: settings.arguments as CategoryModel);
      
      // case HomeScreen.routeName:
      // return HomeScreen.route();


      default: 
        return _errorRoute();
    }
    
  }
   static Route _errorRoute(){
    
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_)=>Scaffold(appBar: AppBar(title: const Text('error'),),));
  }
}