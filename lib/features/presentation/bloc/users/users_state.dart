part of 'users_bloc.dart';

@freezed
abstract class UsersState with _$UsersState {
  const factory UsersState.initial() = Initial;
  const factory UsersState.loading() = Loading;
  const factory UsersState.errorState(Failure failure) = ErrorState;
  const factory UsersState.success(List<EmployeeEntity> employees) = Success;
}
