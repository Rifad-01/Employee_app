part of 'users_bloc.dart';

@freezed
abstract class UsersEvent with _$UsersEvent {
  const factory UsersEvent.started() = Started;
  const factory UsersEvent.fetchUser({required int page}) = FetchUser;
}
