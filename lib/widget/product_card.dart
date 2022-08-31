import 'package:flutter/material.dart';

import '../screens/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel productModel;
  const ProductCard({
    Key? key, required this.productModel,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          SizedBox(
            height: 150,
            width: 120,
            child: Image.network(productModel.imgUrl, fit: BoxFit.cover,),
            
          ),
          Positioned(
            bottom: 0,
            child: Container(
              color: Colors.black,
              width: 120,
              height: 40,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(productModel.name, style: const TextStyle(color: Colors.white),),
                        Text(productModel.price.toString(),style: const TextStyle(color: Colors.white),)
                      ],
                    ),
                    const Spacer(),
                    IconButton(onPressed: (){}, icon: Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.grey), child: const Icon(Icons.add, color: Colors.white,size: 18,)))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}