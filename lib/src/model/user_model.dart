class UserModel {
  String email;
  String password;

  UserModel({this.email, this.password}) : assert(email != null || password != null);

  @override
  String toString() {
    return 'UserModel{email: $email, password: $password}';
  }
}
