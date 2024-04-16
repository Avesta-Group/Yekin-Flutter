import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
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
        );
        
        // ..interceptors.addAll([
        //     AuthorizationInterceptor(),
        //     LoggerInterceptor(),
        //   ]);

  late final Dio _dio;

  Future getResource({required int id,required model}) async {
    try {
      final response = await _dio.get('${Endpoints.baseURL}/$model/$id');
      print(response);
    } on DioException catch (err) {
      final errorMessage = err.toString();
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  Future createResource({required model,body}) async {
    try {
      final response = await _dio.post('${Endpoints.baseURL}/$model', data: body.toJson());
      print(response);
      // return model.fromJson(response.data);
    } on DioException catch (err) {
      final errorMessage = err.toString();
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  
  Future<void> updateResource({required int id, required String model, required dynamic body}) async {
    try {
      final response = await _dio.put('${Endpoints.baseURL}/$model/$id', data: body.toJson());
      print(response);
    } on DioException catch (err) {
      final errorMessage = err.toString();
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  Future<void> deleteResource({required int id,required model}) async {
    try {
      await _dio.delete('${Endpoints.baseURL}/$model/$id');
    } on DioException catch (err) {
      final errorMessage = err.toString();
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }
}