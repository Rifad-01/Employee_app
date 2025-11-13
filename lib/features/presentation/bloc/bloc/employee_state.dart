part of 'employee_bloc.dart';

@freezed
class EmployeeState with _$EmployeeState {
  const factory EmployeeState.initial() = Initial;
  const factory EmployeeState.employeeFetching(int page) = EmployeeFetching;
  const factory EmployeeState.employeeFetchingFailed(Failure failure,int page) = EmployeeFetchingFailed;
  const factory EmployeeState.employeeFetchingSuccess(List<EmployeeEntity> employees,int page,int totalPage) = EmployeeFetchingSuccess;
  const factory EmployeeState.creatingEmployee() = CreatingEmployee;
}
