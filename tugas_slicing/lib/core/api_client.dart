import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio = Dio();

  Future<Response> registerUser(Map<String, dynamic> userData) async {
    try {
      Response response = await _dio.post(
        'https://opibox.fly.dev/auth/signup',
        data: userData,
      );

      // Mengembalikan respons dari server
      return response;
      // ignore: deprecated_member_use
    } on DioError catch (e) {
      // Mengembalikan respons kesalahan jika ada
      return e.response!;
    }
  }

  Future<Response> login(String email, String password) async {
    try {
      Response response = await _dio.post(
        'https://opibox.fly.dev/auth/login',
        data: {
          'email': email,
          'password': password,
        },
      );

      // Mengembalikan respons dari server
      return response;
      // ignore: deprecated_member_use
    } on DioError catch (e) {
      // Mengembalikan respons kesalahan jika ada
      return e.response!;
    }
  }

  Future<Response> getUserProfileData(String accessToken) async {
    try {
      Response response = await _dio.get(
        'https://opibox.fly.dev/me',
        options: Options(
          headers: {
            'Authorization': 'Bearer $accessToken',
          },
        ),
      );

      // Mengembalikan respons dari server
      return response;
      // ignore: deprecated_member_use
    } on DioError catch (e) {
      // Mengembalikan respons kesalahan jika ada
      return e.response!;
    }
  }

  Future<Response> logout(String accessToken) async {
    try {
      Response response = await _dio.get(
        'https://opibox.fly.dev/auth/logout',
        options: Options(
          headers: {
            'Authorization': 'Bearer $accessToken',
          },
        ),
      );

      // Mengembalikan respons dari server
      return response;
      // ignore: deprecated_member_use
    } on DioError catch (e) {
      // Mengembalikan respons kesalahan jika ada
      return e.response!;
    }
  }
}
