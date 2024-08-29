import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

// class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
//   const TimestampConverter();
//
//   @override
//   DateTime fromJson(Timestamp timestamp) {
//     return timestamp.toDate();
//   }
//
//   @override
//   Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
// }

class ProductEntity{
  final String categoryId ;
  final List<ProductEntity> colors ;
 // @TimestampConverter()
  final DateTime createdDate ;
  final double discountedPrice ;
  final int gender ;
  final List<String> images ;
  final double price ;
  final List<String> sizes ;
  final String productId ;
  final int salesNumber ;
  final String title;

  ProductEntity({
    required this.categoryId,
    required this.colors,
    required this.createdDate,
    required this.discountedPrice,
    required this.gender,
    required this.images,
    required this.price,
    required this.sizes,
    required this.productId,
    required this.salesNumber,
    required this.title});



}
