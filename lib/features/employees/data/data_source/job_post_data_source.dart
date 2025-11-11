import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/employees/data/models/employee_model/employee_model.dart';
import 'package:http/http.dart' as http;

abstract class JobPostDataSource {
  Future<EmployeeModel> jobPost({required String name, required String job});
}

class JobPostDataSourceImpl implements JobPostDataSource {
  final http.Client client;

  JobPostDataSourceImpl({required this.client});
  @override
  Future<EmployeeModel> jobPost({
    required String name,
    required String job,
  }) async {
    try {
      final http.Response response = await client.post(
        Uri.parse('https://reqres.in/api/users'),
        body: jsonEncode({'name': name, 'job': job}),
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 200) {
        return EmployeeModel.fromJson(jsonDecode(response.body));
      }
      throw UnknownFailure();
    } on UnauthorizedFailure {
      throw UnauthorizedFailure();
    } on SocketException {
      throw NetworkFailure();
    } on TimeoutException {
      throw TimeoutFailure();
    } catch (e) {
      throw UnauthorizedFailure();
    }
  }
}
