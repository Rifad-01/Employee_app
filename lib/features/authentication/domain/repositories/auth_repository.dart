import 'package:dartz/dartz.dart';
import 'package:employee_app/core/failure/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, String>> login({
    required String email,
    required String password,
  });
}

