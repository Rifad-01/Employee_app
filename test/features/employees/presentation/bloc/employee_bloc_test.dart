import 'package:dartz/dartz.dart';
import 'package:employee_app/features/employees/domain/usecases/employee_usecase.dart';
import 'package:employee_app/features/employees/domain/usecases/job_post_usecase.dart';
import 'package:employee_app/features/employees/presentation/bloc/employee_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../../../../helpers/test_data.dart';
import 'employee_bloc_test.mocks.dart';

@GenerateMocks([EmployeeUsecase, JobPostUsecase])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late EmployeeUsecase employeeUsecase;
  late JobPostUsecase jobPostUsecase;
  late GlobalKey<NavigatorState> navKey;

  late EmployeeBloc employeeBloc;

  group("employee bloc tesing ", () {
    setUp(() {
      employeeUsecase = MockEmployeeUsecase();
      jobPostUsecase = MockJobPostUsecase();
      navKey = GlobalKey<NavigatorState>();
      employeeBloc = EmployeeBloc(employeeUsecase, jobPostUsecase, navKey);
    });
    test("fetching Users List", () async {
      // Arrange
      when(
        employeeUsecase.fetchUser(page: 2),
      ).thenAnswer((_) async => Right(TestData.testEmployeeList));

      final emitted = <EmployeeState>[];
      final sub = employeeBloc.stream.listen(emitted.add);

      // Act
      employeeBloc.add(FetchEmployees(page: 2));
      await Future.delayed(const Duration(milliseconds: 50));

      // final result = await employeeUsecase.fetchUser(page: 1);

      // Assert
      expect(emitted.length, 2);
      expect(emitted[0], isA<EmployeeFetching>());
      expect(emitted[1], isA<EmployeeFetchingSuccess>());
      expect(
        (emitted[1] as EmployeeFetchingSuccess).employees.length,
        TestData.testEmployee.length,
      );
      // expect(result, isA<Right>());

      await sub.cancel();
    });

    // jobPosting
    test("Jobposting Employees", () async {
      // Arrange
      when(
        jobPostUsecase.jobPost(name: "james", job: "Engineer"),
      ).thenAnswer((_) async => Right("Success.."));

      // Act
      employeeBloc.add(
        CreatingEmployees(empName: 'james', jobTitle: 'Engineer'),
      );
      await Future.delayed(const Duration(milliseconds: 50));
      final result =await jobPostUsecase.jobPost(job: 'Engineer',name: 'james');

      // Assert
      expect(result, isA<Right>());

    });
  });

}
