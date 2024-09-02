
  import 'package:get_it/get_it.dart';

  import 'data/auth/data_sources/auth_firebase_service.dart';
import 'data/auth/repositories/auth_repository_impl.dart';
import 'data/category/repository/category.dart';
import 'data/category/source/category_firebase_service.dart';
import 'data/product/repository/product.dart';
import 'data/product/source/product_firebase_service.dart';
  import 'domain/auth/repositories/auth/auth.dart';
import 'domain/auth/use_cases/get_ages.dart';
import 'domain/auth/use_cases/get_user.dart';
import 'domain/auth/use_cases/is_logged_in.dart';
import 'domain/auth/use_cases/send_password_reset_email.dart';
import 'domain/auth/use_cases/signin.dart';
import 'domain/auth/use_cases/signup.dart';
import 'domain/category/repository/category.dart';
import 'domain/category/usecases/get_categories.dart';
import 'domain/product/repository/product.dart';
import 'domain/product/usecases/get_top_selling.dart';

  final sl = GetIt.instance;

  Future<void> initializeDependencies() async {

    // Services

    sl.registerSingleton<AuthFirebaseService>(
        AuthFirebaseServiceImpl()
    );

    sl.registerSingleton<CategoryFirebaseService>(
        CategoryFirebaseServiceImpl()
    );

    sl.registerSingleton<ProductFirebaseService>(
        ProductFirebaseServiceImpl()
    );




    // Repositories

    sl.registerSingleton<AuthRepository>(
        AuthRepositoryImpl()
    );

    sl.registerSingleton<CategoryRepository>(
        CategoryRepositoryImpl()
    );

    sl.registerSingleton<ProductRepository>(
        ProductRepositoryImpl()
    );




    // Usecases

    sl.registerSingleton<SignupUseCase>(
        SignupUseCase()
    );

    sl.registerSingleton<GetAgesUseCase>(
        GetAgesUseCase()
    );

    sl.registerSingleton<SigninUseCase>(
        SigninUseCase()
    );

    sl.registerSingleton<SendPasswordResetEmailUseCase>(
        SendPasswordResetEmailUseCase()
    );

    sl.registerSingleton<IsLoggedInUseCase>(
        IsLoggedInUseCase()
    );

    sl.registerSingleton<GetUserUseCase>(
        GetUserUseCase()
    );

    sl.registerSingleton<GetCategoriesUseCase>(
        GetCategoriesUseCase()
    );

    sl.registerSingleton<GetTopSellingUseCase>(
        GetTopSellingUseCase()
    );


  }

