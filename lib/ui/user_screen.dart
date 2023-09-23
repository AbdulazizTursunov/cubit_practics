import 'package:dio_practics/cubit/user_cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/user_cubit/user_state.dart';

class UserCubitScreen extends StatefulWidget {
  const UserCubitScreen({Key? key}) : super(key: key);

  @override
  State<UserCubitScreen> createState() => _UserCubitScreenState();
}

class _UserCubitScreenState extends State<UserCubitScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  void initState() {
    UserState userState = BlocProvider.of<UserCubit>(context).state;
    nameController.text  = userState.userName;
  if(userState.userAge != 0) {
    ageController.text  = userState.userAge.toString();
  }
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
              const  SizedBox(height:50),
                TextField(
                  controller: nameController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(hintText: "user name",

                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:const BorderSide(width: 1,color: Colors.yellow)
                  )),
                  onChanged: (value) {
                    context.read<UserCubit>().updateUserName(value);
                  },
                ),
               const  SizedBox(height: 20),
                TextField(
                  controller: ageController,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "user age",border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:const BorderSide(width: 1,color: Colors.yellow)
                  )),
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      context.read<UserCubit>().updateUserAge(int.parse(value));
                    }
                  },
                ),
                const SizedBox(height: 20),
                Text(
                  state.toString(),
                  style:const TextStyle(fontSize: 30, color: Colors.black),
                ),
              ],
            ),
          );
        },
        buildWhen: (previous,current){
          debugPrint(previous.toString());
          debugPrint(current.toString());
          return previous != current;
        },

      ),
    );
  }
}
