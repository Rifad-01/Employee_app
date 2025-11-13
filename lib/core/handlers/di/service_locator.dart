import 'package:employee_app/features/authentication/data/datasource/auth_data_source.dart';
import 'package:employee_app/features/authentication/data/repositories/auth_repository_impl.dart';
import 'package:employee_app/features/authentication/domain/repositories/auth_repository.dart';
import 'package:employee_app/features/authentication/domain/usecases/auth_usecase.dart';
import 'package:employee_app/features/employees/data/data_source/job_post_data_source.dart';
import 'package:employee_app/features/employees/data/data_source/employee_data_source.dart';
import 'package:employee_app/features/employees/data/repositories/job_repository_impl.dart';
import 'package:employee_app/features/employees/data/repositories/employee_repository_impl.dart';
import 'package:employee_app/features/employees/domain/repositories/job_repository.dart';
import 'package:employee_app/features/employees/domain/repositories/employee_repository.dart';
import 'package:employee_app/features/employees/domain/usecases/job_post_usecase.dart';
import 'package:employee_app/features/employees/domain/usecases/employee_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  getIt.registerSingleton<http.Client>(http.Client());

  getIt.registerSingleton<AuthDataSource>(
    AuthDataSourceImpl(client: getIt<http.Client>()),
  );
  getIt.registerSingleton<EmployeeDataSource>(
    UsersDataSourceImpl(getIt<http.Client>()),
  );
  getIt.registerSingleton<JobPostDataSource>(
    JobPostDataSourceImpl(client: getIt<http.Client>()),
  );

  getIt.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(getIt<AuthDataSource>()),
  );

  getIt.registerSingleton<EmployeeRepository>(
    UsersRepositoryImpl(getIt<EmployeeDataSource>()),
  );
  getIt.registerSingleton<JobRepository>(
    JobRepositoryImpl(getIt<JobPostDataSource>()),
  );

  getIt.registerSingleton<AuthUsecase>(AuthUsecase(getIt<AuthRepository>()));

  getIt.registerSingleton<EmployeeUsecase>(EmployeeUsecase(getIt<EmployeeRepository>()));

  getIt.registerSingleton<JobPostUsecase>(
    JobPostUsecase(getIt<JobRepository>()),
  );
}
