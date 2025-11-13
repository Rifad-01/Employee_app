import 'package:dartz/dartz.dart';
import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/authentication/domain/repositories/auth_repository.dart';

class AuthUsecase {
  final AuthRepository repository;

  AuthUsecase(this.repository);

  Future<Either<Failure, String>> login({
    required String email,
    required String password,
  }) => repository.login(email: email, password: password);
}
