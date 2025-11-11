import 'package:employee_app/features/presentation/bloc/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  final String token;
  const HomeView({super.key, required this.token});

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
      floatingActionButton: FloatingActionButton(onPressed: () {
     final String token=   context.read<AuthBloc>().state.maybeWhen(orElse: () => '',success: (token) => token,);
      },),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("title.."),
            subtitle: Text("subtitle.."),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
      ),
    );
  }
}
