import 'package:dio/dio.dart';
import 'package:doctorito/core/network/api_service.dart';
import 'package:doctorito/core/network/dio_factory.dart';
import 'package:doctorito/features/auth/data/repos/login_repo.dart';
import 'package:doctorito/features/auth/presentation/view_model/login/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<ApiService>()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));
}
