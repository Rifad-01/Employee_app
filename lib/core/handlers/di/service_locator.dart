import 'package:employee_app/features/employees/data/data_source/auth_data_source.dart';
import 'package:employee_app/features/employees/data/data_source/job_post_data_source.dart';
import 'package:employee_app/features/employees/data/data_source/users_data_source.dart';
import 'package:employee_app/features/employees/data/repositories/auth_repository_impl.dart';
import 'package:employee_app/features/employees/data/repositories/job_repository_impl.dart';
import 'package:employee_app/features/employees/data/repositories/users_repository_impl.dart';
import 'package:employee_app/features/employees/domain/repositories/auth_repository.dart';
import 'package:employee_app/features/employees/domain/repositories/job_repository.dart';
import 'package:employee_app/features/employees/domain/repositories/users_repository.dart';
import 'package:employee_app/features/employees/domain/usecases/auth_usecase.dart';
import 'package:employee_app/features/employees/domain/usecases/job_post_usecase.dart';
import 'package:employee_app/features/employees/domain/usecases/users_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  getIt.registerSingleton<http.Client>(http.Client());

  getIt.registerSingleton<AuthDataSource>(
    AuthDataSourceImpl(client: getIt<http.Client>()),
  );
  getIt.registerSingleton<UsersDataSource>(
    UsersDataSourceImpl(getIt<http.Client>()),
  );
  getIt.registerSingleton<JobPostDataSource>(
    JobPostDataSourceImpl(client: getIt<http.Client>()),
  );

  getIt.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(getIt<AuthDataSource>()),
  );

  getIt.registerSingleton<UsersRepository>(
    UsersRepositoryImpl(getIt<UsersDataSource>()),
  );
  getIt.registerSingleton<JobRepository>(
    JobRepositoryImpl(getIt<JobPostDataSource>()),
  );

  getIt.registerSingleton<AuthUsecase>(AuthUsecase(getIt<AuthRepository>()));

  getIt.registerSingleton<UsersUsecase>(UsersUsecase(getIt<UsersRepository>()));

  getIt.registerSingleton<JobPostUsecase>(
    JobPostUsecase(getIt<JobRepository>()),
  );
}
