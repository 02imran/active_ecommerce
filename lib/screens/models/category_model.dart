import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class CategoryModel extends Equatable{
  final String name;
  final String imageUrl;

  CategoryModel({required this.name,required this.imageUrl});
  
  @override
  // TODO: implement props
  List<Object?> get props => [name, imageUrl];

  static List<CategoryModel> categiries = [
    CategoryModel(name: 'Soft', imageUrl: 'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80'),
    CategoryModel(name: 'Soft', imageUrl: 'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80'),
    CategoryModel(name: 'Soft', imageUrl: 'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80'),
  ];

  
}