// ignore_for_file: prefer_const_constructors

import 'package:dio_practics/cubit/login_cubit/login_cubit.dart';
import 'package:dio_practics/cubit/login_cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login User"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                BlocProvider.of<LoginCubit>(context)
                    .signIn("azizjdscdb", "665465c4sd654fc65dsf");
              },
              child: Text("Sign In")),
          TextButton(
              onPressed: () {
                BlocProvider.of<LoginCubit>(context)
                    .signUp("azisdjcds55@", "JDBCKDSVF55D6VF54", "aziz");
              },
              child: Text("Sign Up")),
          TextButton(
              onPressed: () {
                BlocProvider.of<LoginCubit>(context).logOutUser();
              },
              child: Text("Log Out")),
          BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
            if (state is InitialState) {
              return const Center(
                child: Text("User topilmadi"),
              );
            }
            if (state is SignInState) {
              return const Center(
                child: Text("User Sign In qilyapdi"),
              );
            }
            if (state is SignUpState) {
              return const Center(
                child: Text("User Register qilyapdi"),
              );
            }
            if (state is LoggedState) {
              return const Center(
                child: Text("User Registerdan  o'tdi "),
              );
            }
            return const Center(
              child: Text("User Logged Out "),
            );
          })
        ],
      ),
    );
  }
}
