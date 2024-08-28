import 'package:json_annotation/json_annotation.dart';
part 'color.g.dart';

@JsonSerializable()
class ProductColor{
 final String title;
 final String hexCode;


  ProductColor({
    required this.title,
    required this.hexCode
  });


 factory ProductColor.fromJson(Map<String,dynamic>json) => _$ProductColorFromJson(json) ;

 Map<String,dynamic>toJson() =>  _$ProductColorToJson(this) ;
}