
import 'package:flutter_bloc/flutter_bloc.dart';

import 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit():super(UserState(userName: "", userAge: 0));

  updateUserName(String newName) {
    emit(state.copyWith(userName: newName));
  }

  updateUserAge(int newAge){
    emit(state.copyWith(userAge: newAge));
  }

}