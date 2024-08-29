import 'package:ecommerce_app/domain/product/entities/color.dart';
import 'package:json_annotation/json_annotation.dart';
part 'color.g.dart';

@JsonSerializable()
class ProductColorModel{
 final String title;
 final String hexCode;


  ProductColorModel({
    required this.title,
    required this.hexCode
  });


 factory ProductColorModel.fromJson(Map<String,dynamic>json) => _$ProductColorModelFromJson(json) ;

 Map<String,dynamic>toJson() =>  _$ProductColorModelToJson(this) ;
}

extension ProductColorXModel on ProductColorModel{
  ProductColorEntity  toEntity(){
    return ProductColorEntity(
        title: title,
        hexCode: hexCode
    );
  }
}