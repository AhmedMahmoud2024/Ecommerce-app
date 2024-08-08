import 'package:get_it/get_it.dart';

import 'data/data_sources/auth_firebase_service.dart';
import 'data/repositories/auth_repository_impl.dart';
import 'domain/repositories/auth/auth.dart';
import 'domain/use_cases/signin.dart';
import 'domain/use_cases/signup.dart';

final sl=GetIt.instance ;

Future<void> initializeDependencies() async{

  sl.registerSingleton<AuthFirebaseService>(
      AuthFirebaseServiceImpl()
  );

  sl.registerSingleton<AuthRepository>(
      AuthRepositoryImpl()
  );

  sl.registerSingleton<SignupUseCase>(
      SignupUseCase()
  );
  sl.registerSingleton<SigninUseCase>(
      SigninUseCase()
  );
}