import 'package:dartz/dartz.dart';
import 'package:employee_app/core/failure/failure.dart';

abstract class JobRepository {
  Future<Either<Failure, String>> jobPost({
    required String name,
    required String job,
  });
}
