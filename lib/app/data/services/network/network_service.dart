import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';

class NetworkService extends GetxService {
  // final String _baseURL =
  //     "https://rekatoneapitest.azurewebsites.net/api/$apiVersion"; // LIVE
  // final String _baseURL =
  //     "https://rekatone-api-prod.azurewebsites.net/api/$apiVersion"; // PRODUCTION
  // final String _baseURL =
  //     "https://rekatone-api-test.azurewebsites.net/api/$apiVersion"; // DEVELOPMENT | TESTING

  final String _baseURL = "https://gorest.co.in/public/v2";

  late dio.Dio _dio;
}
