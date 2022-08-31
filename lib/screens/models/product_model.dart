

import 'package:equatable/equatable.dart';

class ProductModel extends Equatable{
  final String name;
  final String category;
  final String imgUrl;
  final double price;
  final bool? isRecommended;
  final bool? isPopular;

  const ProductModel( {required this.name, required this.category, required this.imgUrl, required this.price, required this.isRecommended,required  this.isPopular});
  
  @override
  // TODO: implement props
  List<Object?> get props => [name, category, imgUrl, price, isPopular, isRecommended];

  static List<ProductModel> products = [
    const ProductModel(name: 'Soft', category: 'soft', imgUrl: 'https://images.unsplash.com/photo-1660989084062-30af9e64f5b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80', price: 2.33, isRecommended: true, isPopular: true),
    const ProductModel(name: 'Soft', category: 'soft', imgUrl: 'https://images.unsplash.com/photo-1660989084062-30af9e64f5b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80', price: 2.33, isRecommended: true, isPopular: true),
    const ProductModel(name: 'Soft', category: 'soft', imgUrl: 'https://images.unsplash.com/photo-1660936322035-df6176be4a75?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', price: 5.7, isRecommended: true, isPopular: true),
    const ProductModel(name: 'Soft', category: 'soft', imgUrl: 'https://images.unsplash.com/photo-1660989084062-30af9e64f5b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80', price: 2.33, isRecommended: true, isPopular: true),
    const ProductModel(name: 'Soft', category: 'soft', imgUrl: 'https://images.unsplash.com/photo-1660989084062-30af9e64f5b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80', price: 2.33, isRecommended: true, isPopular: true),
    const ProductModel(name: 'Soft', category: 'soft', imgUrl: 'https://images.unsplash.com/photo-1660989084062-30af9e64f5b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80', price: 2.33, isRecommended: true, isPopular: true),
  ];
}