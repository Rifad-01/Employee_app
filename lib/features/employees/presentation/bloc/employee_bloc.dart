import 'package:bloc/bloc.dart';
import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/employees/domain/entity/employee_entity/employee_entity.dart';
import 'package:employee_app/features/employees/domain/usecases/employee_usecase.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'employee_event.dart';
part 'employee_state.dart';
part 'employee_bloc.freezed.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
    final EmployeeUsecase _usecase;

  EmployeeBloc(this._usecase) : super(Initial()) {
    on<FetchEmployees>(_handleFetchUser);
  }
   Future<void> _handleFetchUser(
    FetchEmployees event,
    Emitter<EmployeeState> emit,
  ) async {
    List<EmployeeEntity> employees = state.maybeWhen(
      orElse: () => [],
      employeeFetchingSuccess: (employees, page, totalPage) =>  page > 0 ? employees : [],
    );
    emit(EmployeeFetching(event.page));

    final result = await _usecase.fetchUser(page: event.page);

    result.fold(
      (e) {
        debugPrint("Failed to fetch");
        emit(EmployeeState.employeeFetchingFailed(e, event.page));
      },
      (users) {
         
        debugPrint("Success fetching");
        employees = [...employees,...users.data];
        emit(EmployeeState.employeeFetchingSuccess(employees, users.page,users.totalPages ));
      },
    );
  }
}
