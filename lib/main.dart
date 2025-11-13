import 'package:employee_app/core/handlers/di/service_locator.dart';
import 'package:employee_app/features/authentication/domain/usecases/auth_usecase.dart';
import 'package:employee_app/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:employee_app/features/authentication/presentation/views/login_view.dart';
import 'package:employee_app/features/employees/domain/usecases/job_post_usecase.dart';
import 'package:employee_app/features/employees/domain/usecases/employee_usecase.dart';
import 'package:employee_app/features/presentation/bloc/job_post/job_post_bloc.dart';
import 'package:employee_app/features/presentation/bloc/users/users_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc(getIt<AuthUsecase>())),
        BlocProvider(create: (context) => UsersBloc(getIt<EmployeeUsecase>())),
        BlocProvider(create: (context) => JobPostBloc(getIt<JobPostUsecase>())),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: LoginView(),
      ),
    );
  }
}
