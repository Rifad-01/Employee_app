import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/employees/data/models/employee_model/employee_model.dart';
import 'package:http/http.dart' as http;

abstract class UsersDataSource {
  Future<List<EmployeeModel>> fetchUsers({required int page});
}

class UsersDataSourceImpl implements UsersDataSource {
  final http.Client client;

  UsersDataSourceImpl(this.client);
  @override
  Future<List<EmployeeModel>> fetchUsers({required int page}) async {
    try {
      final http.Response response = await client.get(
        Uri.parse(' https://reqres.in/api/users?page=$page'),
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 200) {
        final List result = jsonDecode(response.body);
        return result.map((e) => EmployeeModel.fromJson(e)).toList();
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
