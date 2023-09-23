import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/counter_cubit/counter_cubit.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<CounterCubit, int>(builder: (context, state) {
        return Center(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "result $state",
                  style: const TextStyle(fontSize: 30, color: Colors.black),
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          context.read<CounterCubit>().increment();
                        },
                        child: const Icon(
                          Icons.add,
                          size: 40,
                        )),
                    const SizedBox(width: 100),
                    ElevatedButton(
                        onPressed: () {
                          context.read<CounterCubit>().decrement();
                        },
                        child: const Icon(
                          Icons.remove,
                          size: 40,
                        )),
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
