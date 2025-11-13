import 'package:dartz/dartz.dart';
import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/employees/domain/entity/employee_list_entity/employee_list_entity.dart';
import 'package:employee_app/features/employees/domain/repositories/employee_repository.dart';

class EmployeeUsecase {
  final EmployeeRepository repository;

  EmployeeUsecase(this.repository);

  Future<Either<Failure, EmployeeListEntity>> fetchUser({
    required int page,
    
  }) => repository.fetchUsers(page: page);
}
