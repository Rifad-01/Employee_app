import 'package:dartz/dartz.dart';
import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/authentication/data/datasource/auth_data_source.dart';
import 'package:employee_app/features/authentication/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource dataSource;

  AuthRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, String>> login({
    required String email,
    required String password,
  }) async {
    try {
      final result = await dataSource.login(email: email, password: password);
      return Right(result);
    } catch (e) {
      return Left(e is Failure ? e : UnknownFailure());
    }
  }
}
