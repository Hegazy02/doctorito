import 'package:dio/dio.dart';
import 'package:doctorito/core/network/api_service.dart';
import 'package:doctorito/core/network/dio_factory.dart';
import 'package:doctorito/features/auth/login/data/repos/login_repo.dart';
import 'package:doctorito/features/auth/login/presentation/view_model/login/login_cubit.dart';
import 'package:doctorito/features/auth/sign_up/data/repos/sign_up_repo.dart';
import 'package:doctorito/features/auth/sign_up/presentation/view_model/sign_up/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<ApiService>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));
  //signup
  getIt
      .registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt<ApiService>()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt<SignUpRepo>()));
}
