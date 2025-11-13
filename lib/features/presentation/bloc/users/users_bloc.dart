import 'package:bloc/bloc.dart';
import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/employees/domain/entity/employee_entity/employee_entity.dart';
import 'package:employee_app/features/employees/domain/usecases/employee_usecase.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_event.dart';
part 'users_state.dart';
part 'users_bloc.freezed.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final EmployeeUsecase _usecase;

  UsersBloc(this._usecase) : super(const Initial()) {
    on<FetchUser>(_handleFetchUser);
  }
  Future<void> _handleFetchUser(
    FetchUser event,
    Emitter<UsersState> emit,
  ) async {
    List<EmployeeEntity> employees = state.maybeWhen(
      orElse: () => [],
      success: (employees, page, totalPage) => page > 0 ? employees : [],
    );
    emit(Loading(event.page));

    final result = await _usecase.fetchUser(page: event.page);

    result.fold(
      (e) {
        debugPrint("Failed to fetch");
        emit(UsersState.errorState(e, event.page));
      },
      (users) {   
        debugPrint("Success fetching");
        employees = [...employees,...users.data];
        emit(UsersState.success(employees, users.page,users.totalPages ));
      },
    );
  }
}
