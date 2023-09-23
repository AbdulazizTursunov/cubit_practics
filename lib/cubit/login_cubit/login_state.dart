

abstract class LoginState{}


class InitialState extends LoginState{}


class SignInState extends LoginState{
  final String  email;
  final String password;
  SignInState({required this.email,required this.password});
}


class SignUpState extends LoginState{
  final String userName;
  final String password;
  final String email;
  SignUpState({required this.password ,required this.userName ,required this.email});
}


class LoggedState extends LoginState{}


class UnAuthenticationState extends LoginState{}