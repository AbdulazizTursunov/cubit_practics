
class UserState {
  final String userName;
  final int userAge;

  UserState({required this.userName, required this.userAge});

  UserState copyWith({
    String? userName,
    int? userAge,
  }) =>
      UserState(
          userName: userName ?? this.userName,
          userAge: userAge ?? this.userAge);

  factory UserState.fromJson(Map<String, dynamic> json) {
    return UserState(userName: json["userName"], userAge: json["userAge"]);
  }

  @override
  String toString() {
    // TODO: implement toString
    return """
    userName:  $userName
    
    userAge: $userAge
    """;
  }
}
