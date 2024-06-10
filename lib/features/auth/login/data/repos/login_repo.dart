import 'package:doctorito/core/network/api_error_handler.dart';
import 'package:doctorito/core/network/api_result.dart';
import 'package:doctorito/core/network/api_service.dart';
import 'package:doctorito/features/auth/login/data/models/login_request_body.dart';
import 'package:doctorito/features/auth/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);
  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final LoginResponse response = await _apiService.login(loginRequestBody);
      return ApiResult.success(data: response);
    } catch (e) {
      return ApiResult.failure(error: ErrorHandler.handle(e));
    }
  }
}
