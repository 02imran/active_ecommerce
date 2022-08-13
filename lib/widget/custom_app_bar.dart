


import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  const CustomAppBar({
    Key? key, required this.title,
  }) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child:  Text(title!),
    ),
    
    actions: [IconButton(onPressed: (){
      Navigator.pushNamed(context, '/wishlist');
    }, icon: const Icon(Icons.favorite, color: Colors.black,))],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}