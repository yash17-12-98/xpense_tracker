class UserModel {
  String? name;
  String? email;
  String? password;
  String? uid;

  UserModel({this.name, this.email,this.password, this.uid});

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    uid = json['uid'];
  }

  Map<String, dynamic> toMap() => {
    'name': name,
    'email': email,
    'password': password,
    'uid': uid,
  };
}
