import 'package:bloc/bloc.dart';
import 'package:doctorito/features/auth/data/models/login_request_body.dart';
import 'package:doctorito/features/auth/data/repos/login_repo.dart';
import 'package:doctorito/features/auth/presentation/view_model/login/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  Future<void> login(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());

    final result = await _loginRepo.login(loginRequestBody);

    result.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse: loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error));
    });
  }
}
