
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/models/user_creation_req.dart';
import 'package:ecommerce_app/data/models/user_signin_req.dart';
 abstract  class AuthRepository {
  Future<Either> signin(UserSigninReq user);
  Future<Either> signup(UserCreationReq user);
  Future<Either> getAges();
  Future<Either> sendPasswordResetEmail(String email) ;
  Future<bool> isLoggedIn();
  Future<Either> getUser();
 }