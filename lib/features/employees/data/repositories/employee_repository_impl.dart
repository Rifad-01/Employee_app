import 'package:dartz/dartz.dart';
import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/employees/data/data_source/employee_data_source.dart';
import 'package:employee_app/features/employees/domain/entity/employee_list_entity/employee_list_entity.dart';
import 'package:employee_app/features/employees/domain/repositories/employee_repository.dart';

class UsersRepositoryImpl implements EmployeeRepository {
  final EmployeeDataSource dataSource;

  UsersRepositoryImpl(this.dataSource);
  @override
  Future<Either<Failure, EmployeeListEntity>> fetchUsers({
    required int page,
  }) async {
    try {
      final result = await dataSource.fetchUsers(page: page);
      return Right(EmployeeListEntity.fromModel(model: result));
    } catch (e) {
      return Left(e is Failure ? e : UnknownFailure());
    }
  }
}
