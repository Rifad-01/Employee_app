import 'package:dartz/dartz.dart';
import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/employees/domain/entity/employee_list_entity/employee_list_entity.dart';

abstract class EmployeeRepository {
  Future<Either<Failure, EmployeeListEntity>> fetchUsers({
    required int page,
  });
}
