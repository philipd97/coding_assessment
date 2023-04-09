class User {
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String gender;
  final String imagePath;
  final String token;

  const User({
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.imagePath,
    required this.token,
  });

  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      id: map['id'].toInt(),
      username: map['username'],
      email: map['email'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      gender: map['gender'],
      imagePath: map['image'],
      token: map['token'],
    );
  }

  @override
  String toString() {
    return 'User(id: $id, username: $username, email: $email, firstName: $firstName, lastName: $lastName, gender: $gender, imagePath: $imagePath, token: $token)';
  }
}
