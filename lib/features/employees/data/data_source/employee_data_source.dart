import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/employees/data/models/employee_list_model/employee_list_model.dart';
import 'package:http/http.dart' as http;

abstract class EmployeeDataSource {
  Future<EmployeeListModel> fetchUsers({required int page});
}

class UsersDataSourceImpl implements EmployeeDataSource {
  final http.Client client;

  UsersDataSourceImpl(this.client);
  @override
  Future<EmployeeListModel> fetchUsers({required int page}) async {
    try {
      final http.Response response = await client.get(
        Uri.parse('https://reqres.in/api/users?page=$page'),
        headers: {'x-api-key': 'reqres-free-v1'},
      );
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        // final List <dynamic> users= result['data'];
        return EmployeeListModel.fromJson(result);
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
