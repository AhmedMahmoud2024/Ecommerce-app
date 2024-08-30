import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/domain/product/entities/product.dart';
import 'color.dart';
import 'package:json_annotation/json_annotation.dart';
part 'product.g.dart';

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp timestamp) {
    return timestamp.toDate();
  }

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}

@JsonSerializable()
class ProductModel{
  final String categoryId ;
  final List<ProductColorModel> colors ;
  @TimestampConverter()
  final DateTime createdDate ;
  final num discountedPrice ;
  final int gender ;
  final List<String> images ;
  final num price ;
  final List<String> sizes ;
  final String productId ;
  final int salesNumber ;
  final String title;

  ProductModel({
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

  factory ProductModel.fromJson(Map<String,dynamic>json) => _$ProductModelFromJson(json) ;
  Map<String,dynamic>toJson() =>  _$ProductModelToJson(this) ;


}

extension ProductXModel on ProductModel{
  ProductEntity toEntity(){
    return ProductEntity(
        categoryId: categoryId,
        colors: colors.map((e) =>e.toEntity()).toList() as List<ProductEntity>,
        createdDate: createdDate,
        discountedPrice: discountedPrice,
        gender: gender,
        images: images,
        price: price,
        sizes: sizes,
        productId: productId,
        salesNumber: salesNumber,
        title: title
    );
  }
}
