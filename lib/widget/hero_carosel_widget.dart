
import 'package:flutter/material.dart';

import '../screens/models/models.dart';

class HeroCaroselCard extends StatelessWidget {
  final CategoryModel? categoryModel;
  const HeroCaroselCard({Key? key, required this.categoryModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.pushNamed(context, '/catalog',arguments: categoryModel);
      },
      child: Container(
       margin: const EdgeInsets.all(5.0),
       child: ClipRRect(
         borderRadius: const BorderRadius.all(Radius.circular(5.0)),
         child: Stack(
           children: <Widget>[
             Image.network(categoryModel!.imageUrl, fit: BoxFit.cover, width: 1000.0),
             Positioned(
               bottom: 0.0,
               left: 0.0,
               right: 0.0,
               child: Container(
                 decoration: const BoxDecoration(
                   gradient: LinearGradient(
                     colors: [
                       Color.fromARGB(200, 0, 0, 0),
                       Color.fromARGB(0, 0, 0, 0)
                     ],
                     begin: Alignment.bottomCenter,
                     end: Alignment.topCenter,
                   ),
                 ),
                 padding: const EdgeInsets.symmetric(
                     vertical: 10.0, horizontal: 20.0),
                 child: Text(
                   categoryModel!.name,
                   style: const TextStyle(
                     color: Colors.white,
                     fontSize: 20.0,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),
             ),
           ],
         )),
     ),
    );
  }
}
