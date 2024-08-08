
import 'package:dartz/dartz.dart';
 abstract  class AuthRepository {
  Future<Either> signin();
  Future<Either> signup();
 }