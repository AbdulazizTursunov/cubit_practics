import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(InitialState());


  Future<void> signIn(String email, String password) async {
    emit(SignInState(email: email, password: password));
  await   Future.delayed(const Duration(seconds: 3));
    emit(LoggedState());
  }
  

  Future<void> signUp(String email, String password, String userName) async {
    emit(SignUpState(password: password, userName: userName, email: email));
    await  Future.delayed(const Duration(seconds: 3));
    emit(LoggedState());
  }

  logOutUser(){
    emit(UnAuthenticationState());
  }
}
