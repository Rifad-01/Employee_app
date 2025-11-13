part of 'users_bloc.dart';

@freezed
abstract class UsersState with _$UsersState {
  const factory UsersState.initial() = Initial;
  const factory UsersState.loading(int page) = Loading;
  const factory UsersState.errorState(Failure failure,int page) = ErrorState;
  const factory UsersState.success(List<EmployeeEntity> employees,int page,int totalPage) = Success;
}
