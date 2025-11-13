import 'package:bloc/bloc.dart';
import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/employees/domain/entity/employee_entity/employee_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_event.dart';
part 'employee_state.dart';
part 'employee_bloc.freezed.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  EmployeeBloc() : super(Initial()) {
    on<EmployeeEvent>((event, emit) {
    });
  }
}
