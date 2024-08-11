
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/models/user_creation_req.dart';
import 'package:ecommerce_app/data/models/user_signin_req.dart';
 abstract  class AuthRepository {
  Future<Either> signin(UserSigninReq userSigninReq);
  Future<Either> signup(UserCreationReq userCreationReq);
  Future<Either> getAges();
 }