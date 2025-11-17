import 'package:dartz/dartz.dart';
import 'package:employee_app/features/authentication/domain/usecases/auth_usecase.dart';
import 'package:employee_app/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_bloc_test.mocks.dart';

@GenerateMocks([AuthUsecase])
void main() {
  late AuthUsecase authUsecase;
  late AuthBloc authBloc;

  setUp(() {
    authUsecase = MockAuthUsecase();
    authBloc = AuthBloc(authUsecase);
  });

  test('authentication testing ....', () async {
    // Arrange
    when(
      authUsecase.login(email: 'eve.holt@reqres.in', password: 'cityslicka'),
    ).thenAnswer((_) async => Right("Login Success"));

    // Act
    authBloc.add(Login(email: 'eve.holt@reqres.in', password: 'cityslicka'));
    await Future.delayed(const Duration(milliseconds: 50));
    final result = await authUsecase.login(
      email: 'eve.holt@reqres.in',
      password: 'cityslicka',
    );

    // Assert
    expect(result, isA<Right>());
  });
}
