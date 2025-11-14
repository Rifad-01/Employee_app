import 'package:dartz/dartz.dart';
import 'package:employee_app/features/employees/domain/usecases/employee_usecase.dart';
import 'package:employee_app/features/employees/domain/usecases/job_post_usecase.dart';
import 'package:employee_app/features/employees/presentation/bloc/employee_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'employee_bloc_test.mocks.dart';

@GenerateMocks([EmployeeUsecase, JobPostUsecase])
void main() {
  late EmployeeUsecase employeeUsecase;
  late JobPostUsecase jobPostUsecase;
  late GlobalKey<NavigatorState> navKey;

  late EmployeeBloc employeeBloc;

  setUp(() {
    employeeUsecase = MockEmployeeUsecase();
    jobPostUsecase = MockJobPostUsecase();
    navKey = GlobalKey<NavigatorState>();

    employeeBloc = EmployeeBloc(employeeUsecase, jobPostUsecase, navKey);
  });

  tearDown(() {
    employeeBloc.close();
  });

  test('emits success loading then fetch employees', () async {
    // Arrange

    when(
      jobPostUsecase.jobPost(name: 'james', job: 'Engineer'),
    ).thenAnswer((_) async => Right("employee added success"));

    final emitted = <EmployeeState>[];
    final subscription = employeeBloc.stream.listen(emitted.add);

    
    // Act
    employeeBloc.add(CreatingEmployees(empName: 'james', jobTitle: 'Engineer'));
    await Future.delayed(const Duration(milliseconds: 50));

    // Assert
    expect(emitted.length, 2);
    expect(emitted[0], verify(SnackBar(content: Text('success'))));
    expect(emitted[1], verify(SnackBar(content: Text("Failed"))));
  });

  test("", () async {
    //Arrange
  });
}
