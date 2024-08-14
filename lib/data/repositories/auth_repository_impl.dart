import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/models/user_creation_req.dart';
import 'package:ecommerce_app/data/models/user_signin_req.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/repositories/auth/auth.dart';
import '../../service_locator.dart';
import '../data_sources/auth_firebase_service.dart';

class AuthRepositoryImpl extends AuthRepository{
  @override
  Future<Either> signin(UserSigninReq user) async{
    return await sl<AuthFirebaseService>().signin(user);
  }

  @override
  Future<Either> signup(UserCreationReq user) async{
    return await sl<AuthFirebaseService>().signup(user);
  }

  @override
  Future<Either> getAges() async{
    return await sl<AuthFirebaseService>().getAges();
  }

  @override
  Future<Either> sendPasswordResetEmail(String email) async{
    return await sl<AuthFirebaseService>().sendPasswordResetEmail(email);
  }

}