import 'package:ecommerce_app/core/usecase/usecase.dart';

import '../../../service_locator.dart';
import '../repositories/auth/auth.dart';


class IsLoggedInUseCase implements UseCase<bool,dynamic>{
  @override
  Future<bool> call({params}) async{
    return await sl<AuthRepository>().isLoggedIn();
  }

}