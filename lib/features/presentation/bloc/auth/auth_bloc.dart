import 'package:bloc/bloc.dart';
import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/employees/domain/usecases/auth_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUsecase _usecase;
  AuthBloc(this._usecase) : super(const Initial()) {
    on<Login>(_handleLogin);
  }

  Future<void> _handleLogin(Login event, Emitter<AuthState> emit) async {
    emit(Loading());
    final result = await _usecase.login(
      email: event.email,
      password: event.password,
    );
    result.fold(
      (e) {
        print("Failed...***");
        emit(ErrorState(e));
      },
      (user) {
        print("Success...!!!");
        emit(Success(user));
      },
    );
  }
}
