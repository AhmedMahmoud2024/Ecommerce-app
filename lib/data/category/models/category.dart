import 'dart:convert';

import 'package:ecommerce_app/domain/category/entity/category.dart';

class CategoryModel{

  final String title;
  final String categoryId;
  final String image;

  CategoryModel({
    required this.title,
    required this.categoryId,
    required this.image
  });

  Map<String,dynamic> toMap(){  //toMap ==toJson method toMap return Map String output,dynamic input
    return <String,dynamic>{
      'title':title,
      'categoryId':categoryId,
      'image':image
    };
  }

  factory CategoryModel.fromMap(Map<String,dynamic> map){ //fromMap method takes the previous map and make it like categoryModel return factory of categoryModel describe dynamic into its type
    return CategoryModel(                               //
        title: map['title'] as String,
        categoryId:map['categoryId'] as String,
        image: map ['image'] as String
    );
  }

  String toJson() => json.encode(toMap()); // method toJson return String by encoding to map

  factory CategoryModel.fromJson(String source) => CategoryModel.fromMap(json.decode(source) as Map<String,dynamic>);
}

extension CategoryXModel on CategoryModel{
     CategoryEntity toEntity(){
       return CategoryEntity(
           title: title,
           categoryId: categoryId,
           image: image
       );
     }
}