part of 'employee_bloc.dart';

@freezed
class EmployeeEvent with _$EmployeeEvent {
  const factory EmployeeEvent.fetchEmployees(int page) = FetchEmployees;
    const factory EmployeeEvent.creatingEmployees() = CreatingEmployees;

}