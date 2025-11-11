import 'package:dartz/dartz.dart';
import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/employees/domain/entity/employee_entity.dart';
import 'package:employee_app/features/employees/domain/repositories/job_repository.dart';

class JobPostUsecase {
  final JobRepository repository;

  JobPostUsecase(this.repository);

  Future<Either<Failure, EmployeeEntity>> jobPost({
    required String name,
    required String job,
  }) => repository.jobPost(name: name, job: job);
}
