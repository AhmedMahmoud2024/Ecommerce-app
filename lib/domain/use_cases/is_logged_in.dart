import 'package:ecommerce_app/core/usecase/usecase.dart';
import 'package:ecommerce_app/domain/repositories/auth/auth.dart';

import '../../service_locator.dart';

class IsLoggedInUseCase implements UseCase<bool,dynamic>{
  @override
  Future<bool> call({params}) async{
    return await sl<AuthRepository>().isLoggedIn();
  }

}