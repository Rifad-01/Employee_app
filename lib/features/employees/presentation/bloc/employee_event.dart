part of 'employee_bloc.dart';

@freezed
class EmployeeEvent with _$EmployeeEvent {
  const factory EmployeeEvent.fetchEmployees({required int page}) =
      FetchEmployees;
  const factory EmployeeEvent.creatingEmployees({
    required String empName,
    required String jobTitle,
  }) = CreatingEmployees;
}
