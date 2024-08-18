import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/usecase/usecase.dart';
import '../../../data/auth/models/user_creation_req.dart';
import '../../../service_locator.dart';
import '../repositories/auth/auth.dart';

class SignupUseCase implements UseCase<Either,UserCreationReq >{
  @override
  Future<Either> call({UserCreationReq ? params}) {
    return sl<AuthRepository>().signup(params!);
  }

}