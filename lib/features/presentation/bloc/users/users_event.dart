part of 'users_bloc.dart';

@freezed
abstract class UsersEvent with _$UsersEvent {
  const factory UsersEvent.started() = Started;
  const factory UsersEvent.fetchUser(List<EmployeeEntity> employee) = FetchUser;
  const factory UsersEvent.loadedUsers(List<EmployeeEntity> employee) = LoadedUsers;
}
