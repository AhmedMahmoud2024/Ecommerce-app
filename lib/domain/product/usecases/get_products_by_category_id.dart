import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/product/repository/product.dart';
import '../../../core/usecase/usecase.dart';
import '../../../service_locator.dart';


class GetTopProductsByCategoryIdUseCase implements UseCase<Either,String> {

  @override
  Future<Either> call({String ? params}) async {
    return await sl<ProductRepository>().getProductsByCategoryId(params!);
  }

}