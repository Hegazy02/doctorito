import 'package:dio/dio.dart';
import 'package:doctorito/core/network/api_constants.dart';
import 'package:doctorito/features/auth/login/data/models/login_request_body.dart';
import 'package:doctorito/features/auth/login/data/models/login_response.dart';
import 'package:doctorito/features/auth/sign_up/data/models/sign_up_request_body.dart';
import 'package:doctorito/features/auth/sign_up/data/models/sign_up_response.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signUp)
  Future<SignUpResponse> signUp(
    @Body() SignUpRequestBody signUpRequestBody,
  );
}
