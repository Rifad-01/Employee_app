import 'package:dartz/dartz.dart';
import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/employees/data/data_source/users_data_source.dart';
import 'package:employee_app/features/employees/domain/entity/employee_entity.dart';
import 'package:employee_app/features/employees/domain/repositories/users_repository.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UsersDataSource dataSource;

  UsersRepositoryImpl(this.dataSource);
  @override
  Future<Either<Failure, List<EmployeeEntity>>> fetchUsers({
    required int page,
  }) async {
    try {
      final result = await dataSource.fetchUsers(page: page);
      return Right(result.map((e) => EmployeeEntity.fromModel(employees: e)).toList());
    } catch (e) {
      return Left(e is Failure ? e : UnknownFailure());
    }

    
  }
}
