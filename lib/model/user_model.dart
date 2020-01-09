class User {
  String username;
  String password;

  User(this.username, this.password);

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'] ?? '';
    password = json['password'] ?? '';
  }

  Map<String, dynamic> toJson() {
    return {'username': username, 'password': password};
  }

  @override
  String toString() {
    return 'User{name: $username, password: $password}';
  }
}
