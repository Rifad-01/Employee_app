import 'package:employee_app/core/handlers/di/service_locator.dart';
import 'package:employee_app/features/employees/domain/usecases/auth_usecase.dart';
import 'package:employee_app/features/employees/domain/usecases/users_usecase.dart';
import 'package:employee_app/features/presentation/bloc/auth/auth_bloc.dart';
import 'package:employee_app/features/presentation/bloc/users/users_bloc.dart';
import 'package:employee_app/features/presentation/views/login_view.dart';
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
        BlocProvider(create: (context) => UsersBloc(getIt<UsersUsecase>())),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: LoginView(),
      ),
    );
  }
}
