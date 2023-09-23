import 'package:dio_practics/cubit/counter_cubit/counter_cubit.dart';
import 'package:dio_practics/cubit/login_cubit/login_cubit.dart';
import 'package:dio_practics/cubit/user_cubit/user_cubit.dart';
import 'package:dio_practics/ui/tab_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const App());
}


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(providers: [
      BlocProvider(create: (_)=> CounterCubit()),
      BlocProvider(create: (_)=> UserCubit()),
      BlocProvider(create: (_)=> LoginCubit()),

    ], child:const  MainApp());
  }}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:TabBoxScreen()
    );
  }
}
