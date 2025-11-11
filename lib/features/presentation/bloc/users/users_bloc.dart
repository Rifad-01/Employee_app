import 'package:bloc/bloc.dart';
import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/employees/domain/entity/employee_entity.dart';
import 'package:employee_app/features/employees/domain/usecases/users_usecase.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_event.dart';
part 'users_state.dart';
part 'users_bloc.freezed.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final UsersUsecase _usecase;
  int page = 1;

  UsersBloc(this._usecase) : super(const Initial()) {
    on<FetchUser>(_handleFetchUser);
    on<LoadedUsers>(_handleLoading);
  }
  Future<void> _handleFetchUser(
    FetchUser event,
    Emitter<UsersState> emit,
  ) async {
    emit(Loading());

    final result = await _usecase.fetchUser(page: page);

    result.fold((e){
      print("Failed");
      emit(UsersState.errorState(e));
    }, (users){

      print("Success");
      emit(UsersState.success(users));
    });

  }
   Future<void> _handleLoading(
    LoadedUsers event,
    Emitter<UsersState> emit,
  ) async {
    emit(Loading());

    final result = await _usecase.fetchUser(page: page+1);

    result.fold((e){
      print("Failed");
      emit(UsersState.errorState(e));
    }, (users){

      print("Success");
      emit(UsersState.success(users));
    });

  }
}
