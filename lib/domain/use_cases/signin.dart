import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/usecase/usecase.dart';

import '../../data/models/user_signin_req.dart';
import '../../service_locator.dart';
import '../repositories/auth/auth.dart';

class SigninUseCase implements UseCase<Either,UserSigninReq >{
  @override
  Future<Either> call({UserSigninReq ? params}) {
    return sl<AuthRepository>().signin(params!);
  }

}