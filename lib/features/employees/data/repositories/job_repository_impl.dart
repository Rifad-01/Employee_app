import 'package:dartz/dartz.dart';
import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/employees/data/data_source/job_post_data_source.dart';
import 'package:employee_app/features/employees/domain/repositories/job_repository.dart';

class JobRepositoryImpl implements JobRepository {
  final JobPostDataSource dataSource;

  JobRepositoryImpl(this.dataSource);
  @override
  Future<Either<Failure, String>> jobPost({
    required String name,
    required String job,
  }) async {
    try {
      final result = await dataSource.jobPost(name: name, job: job);
      return Right(result);
    } catch (e) {
      return Left(e is Failure ? e : UnknownFailure());
    }
  }
}
