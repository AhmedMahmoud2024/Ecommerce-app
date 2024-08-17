import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/models/user_creation_req.dart';
import 'package:ecommerce_app/data/models/user_signin_req.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/repositories/auth/auth.dart';
import '../../service_locator.dart';
import '../data_sources/auth_firebase_service.dart';
import '../models/user.dart';

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

  @override
  Future<bool> isLoggedIn() async{
    return await sl<AuthFirebaseService>().isLoggedIn();
  }


  @override
  Future < Either > getUser() async {
    var user = await sl < AuthFirebaseService > ().getUser();
    return user.fold(
            (error) {
          return Left(error);
        },
            (data) {
          return Right(
              UserModel.fromMap(data).toEntity()
          );
        }
    );
  }

}