import 'package:employee_app/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:employee_app/features/employees/presentation/bloc/employee_bloc.dart';
import 'package:employee_app/features/employees/presentation/views/job_post_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<EmployeeBloc>().add(FetchEmployees(page: 1));

    scrollController.addListener(() {
      debugPrint("Scroll Position: ${scrollController.position.pixels}");
      if (scrollController.position.pixels + 20 >=
          scrollController.position.maxScrollExtent) {
        debugPrint("${context.read<EmployeeBloc>().state}");
        context.read<EmployeeBloc>().state.maybeWhen(
          orElse: () => {},
          employeeFetchingSuccess: (employees, page, totalPage) {
            if (page != totalPage) {
              context.read<EmployeeBloc>().add(FetchEmployees(page: page + 1));
            }
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Employees",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.black, size: 20),
        onPressed: () {
          final String token = context.read<AuthBloc>().state.maybeWhen(
            orElse: () => '',
            success: (token) => token,
          );
          debugPrint("$token");
          showDialog(context: context, builder: (context) => JobPostView());
        },
      ),
      body: ListView(
        controller: scrollController,
        children: [
          BlocBuilder<EmployeeBloc, EmployeeState>(
            buildWhen: (previous, current) => current.maybeWhen(
              orElse: () => false,
              employeeFetching: (page) => page == 1,
              employeeFetchingFailed: (failure, page) => page == 1,
              employeeFetchingSuccess: (employees, page, totalPage) => true,
            ),
            builder: (context, state) {
              return state.maybeWhen(
                employeeFetching: (page) =>
                    Center(child: CircularProgressIndicator()),
                // employeeFetchingFailed: (failure, page) => Center(
                //   child: Text(
                //     "$failure",
                //     style: TextStyle(color: Colors.white),
                //   ),
                // ),
                employeeFetchingSuccess: (employees, page, totalPage) =>
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: employees.length,
                      itemBuilder: (context, index) {
                        final empl = employees[index];
                        return Container(
                          color: Colors.red,
                          height: 200,
                          width: double.infinity,
                          child: ListTile(
                            title: Text(empl.firstName),
                            subtitle: Text(empl.email),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        );
                      },
                    ),
                orElse: () => Center(child: SizedBox()),
              );
            },
          ),
          BlocBuilder<EmployeeBloc, EmployeeState>(
            buildWhen: (previous, current) => current.maybeWhen(
              orElse: () => false,
              employeeFetching: (page) => page != 1,
              employeeFetchingFailed: (failure, page) => page != 1,
              employeeFetchingSuccess: (employees, page, totalPage) => true,
            ),
            builder: (context, state) {
              return state.maybeWhen(
                employeeFetching: (page) =>
                    Center(child: CircularProgressIndicator()),
                // employeeFetchingFailed: (failure, page) => Center(
                //   child: Text(
                //     "$failure",
                //     style: TextStyle(color: Colors.white),
                //   ),
                // ),
                orElse: () => Center(child: SizedBox()),
              );
            },
          ),
        ],
      ),
    );
  }
}
