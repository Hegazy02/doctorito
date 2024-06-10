import 'package:doctorito/core/network/api_error_handler.dart';
import 'package:doctorito/core/network/api_result.dart';
import 'package:doctorito/core/network/api_service.dart';
import 'package:doctorito/features/auth/sign_up/data/models/sign_up_request_body.dart';
import 'package:doctorito/features/auth/sign_up/data/models/sign_up_response.dart';

class SignUpRepo {
  final ApiService _apiService;
  SignUpRepo(this._apiService);

  Future<ApiResult<SignUpResponse>> signUp(
      {required SignUpRequestBody signUpRequestBody}) async {
    try {
      final SignUpResponse response =
          await _apiService.signUp(signUpRequestBody);
      return ApiResult.success(data: response);
    } catch (e) {
      return ApiResult.failure(error: ErrorHandler.handle(e));
    }
  }
}
