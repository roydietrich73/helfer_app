class Participant {
  final String userName;
  final String password;

  Participant({
    required this.userName,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      "userName": userName,
      "password": password,
    };
  }

  factory Participant.fromJson(Map<String, dynamic> json) {
    return Participant(
      userName: json["username"],
      password: json["password"],
    );
  }
}