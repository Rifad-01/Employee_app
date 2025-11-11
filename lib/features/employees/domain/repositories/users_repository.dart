import 'package:dartz/dartz.dart';
import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/employees/domain/entity/employee_entity.dart';

abstract class UsersRepository {
  Future<Either<Failure, List<EmployeeEntity>>> fetchUsers({
    required int page,
  });
}
