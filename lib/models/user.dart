class User {
  final int id;
  final String? username;
  final String? firstname;
  final String? lastname;
  final String? birthDay;

  User({
    required this.id,
    this.username,
    this.firstname,
    this.lastname,
    this.birthDay,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        username: json['username'],
        firstname: json['firstname'],
        lastname: json['lastname'],
        birthDay: json['birthday'],
      );
}
