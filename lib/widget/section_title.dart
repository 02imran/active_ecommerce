import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  final String? title;
  const SectionHeading({
    Key? key, this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(title!, textAlign: TextAlign.left, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
    );
  }
}
