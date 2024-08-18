import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/usecase/usecase.dart';
import 'package:ecommerce_app/domain/category/repository/category.dart';

import '../../../service_locator.dart';

class GetCategoriesUseCase extends UseCase<Either,dynamic>{
  @override
  Future<Either> call({ dynamic params}) async {
  return await sl<CategoryRepository>().getCategories() ;
  }

}