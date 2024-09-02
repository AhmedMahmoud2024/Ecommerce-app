import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/product/models/product.dart';

abstract class ProductFirebaseService{
  Future<Either> getTopSelling() ;
  Future<Either> getNewIn() ;
}

class ProductFirebaseServiceImpl extends ProductFirebaseService{
  @override
  Future<Either> getTopSelling() async{
  try{
  var returnedData   = await FirebaseFirestore.instance.collection(
      'Products'
  ).where(
    'salesNumber',
     isGreaterThanOrEqualTo:20,
  ).get();
  return Right(returnedData.docs.map((e) => e.data()).toList());
  }catch(e){
 return const Left(
   'Please try again later'
 );
  }
  }

  @override
  Future<Either> getNewIn()async {
    try{
      var returnedData   = await FirebaseFirestore.instance.collection(
          'Products'
      ).where(
        'createdDate',
        isGreaterThanOrEqualTo:const TimestampConverter().fromJson(
         DateTime(
         2024,8,28
         ) as Timestamp
        ),
      ).get();
      return Right(returnedData.docs.map((e) => e.data()).toList());
    }catch(e){
      return const Left(
          'Please try again later'
      );
    }
  }

}