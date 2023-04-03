class UserModel {
  int id;
  String email;
  String referenceCode;
  String firstName;
  String lastName;

  UserModel({required this.id, required this.email, required this.referenceCode, required this.firstName, required this.lastName});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      referenceCode: json['reference_code'],
      firstName: json['first_name'],
      lastName: json['last_name'],
    );
  }
}
