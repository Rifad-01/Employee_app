part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.loading() = Loading;
  const factory AuthState.errorState(Failure failure) = ErrorState;
  const factory AuthState.success(String token) = Success;
}
