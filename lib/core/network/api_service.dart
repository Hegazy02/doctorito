import 'package:dio/dio.dart';
import 'package:doctorito/core/network/api_constants.dart';
import 'package:doctorito/features/auth/data/models/login_request_body.dart';
import 'package:doctorito/features/auth/data/models/login_response.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  // @POST(ApiConstants.signup)
  // Future<SignupResponse> signup(
  //   @Body() SignupRequestBody signupRequestBody,
  // );
}
