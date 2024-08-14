import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/usecase/usecase.dart';
import 'package:ecommerce_app/domain/repositories/auth/auth.dart';

import '../../service_locator.dart';

class SendPasswordResetEmailUseCase implements UseCase<Either,String>{
  @override
  Future<Either> call({String ? params}) {
   return sl<AuthRepository>().sendPasswordResetEmail(params!);
  }

}