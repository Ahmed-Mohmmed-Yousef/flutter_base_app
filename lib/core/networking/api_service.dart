import 'package:dio/dio.dart';
import 'package:flutter_application_2/core/networking/api_constants.dart';
import 'package:flutter_application_2/features/login/data/models/login_request_body.dart';
import 'package:flutter_application_2/features/login/data/models/login_response.dart';
import 'package:flutter_application_2/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:flutter_application_2/features/sign_up/data/models/sign_up_response.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
}
