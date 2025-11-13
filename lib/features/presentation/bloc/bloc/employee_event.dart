part of 'employee_bloc.dart';

@freezed
class EmployeeEvent with _$EmployeeEvent {
  const factory EmployeeEvent.fetchEmployees() = FetchEmployees;
    const factory EmployeeEvent.creatingEmployees() = CreatingEmployees;

}