import 'package:dartz/dartz.dart';
import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/employees/domain/entity/employee_entity.dart';
import 'package:employee_app/features/employees/domain/repositories/users_repository.dart';

class UsersUsecase {
  final UsersRepository repository;

  UsersUsecase(this.repository);

  Future<Either<Failure, List<EmployeeEntity>>> fetchUser({
    required int page,
    
  }) => repository.fetchUsers(page: page);
}
