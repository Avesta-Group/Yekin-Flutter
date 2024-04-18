import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:my_puk_application/api/auth/interceptors/authorization_interceptor.dart';
import 'package:my_puk_application/api/dio_exception.dart';
import 'package:my_puk_application/api/endpoints.dart';

class DioClient {
  DioClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: Endpoints.baseURL,
            connectTimeout: const Duration(milliseconds: Endpoints.connectionTimeout),
            receiveTimeout: const Duration(milliseconds: Endpoints.receiveTimeout),
            responseType: ResponseType.json,
          ),
        )..interceptors.addAll([
            AuthorizationInterceptor(),
          ]);

  late final Dio _dio;

  Future getResources({required model}) async {
    try {
      final response = await _dio.get('${Endpoints.baseURL}/$model');

      return response;
    } on DioException catch (err) {
      final errorMessage = err;
      throw DioExceptionErr.fromDioError(errorMessage);
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  Future getResource({required int id,required model}) async {
    try {
      final response = await _dio.get('${Endpoints.baseURL}/$model/$id');

      return response;
    } on DioException catch (err) {
      final errorMessage = err;
      throw DioExceptionErr.fromDioError(errorMessage);
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  Future createResource({required model,required body}) async {
    try {
      final response = await _dio.post('${Endpoints.baseURL}/$model', data: body);

     return response;
    } on DioException catch (err) {
      final errorMessage = err.toString();
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  
  Future updateResource({required int id, required String model, required  body}) async {
    try {
      final response = await _dio.put('${Endpoints.baseURL}/$model/$id', data: body);

      return response;
    } on DioException catch (err) {
      final errorMessage = err.toString();
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  Future deleteResource({required int id,required model}) async {
    try {
     final response = await _dio.delete('${Endpoints.baseURL}/$model/$id');

      return response;
    } on DioException catch (err) {
      final errorMessage = err.toString();
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }
}