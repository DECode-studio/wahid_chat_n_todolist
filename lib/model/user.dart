class UserModel {
  String? idUser;
  String? nameUser;
  String? emailUser;
  bool? statusUser;
  DateTime? createUser;

  UserModel({
    this.idUser,
    this.nameUser,
    this.emailUser,
    this.statusUser,
    this.createUser,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    idUser = json['idUser'];
    nameUser = json['nameUser'];
    emailUser = json['emailUser'];
    statusUser = json['statusUser'];
    createUser =
        json['createUser'] != null ? DateTime.parse(json['createUser']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    data['idUser'] = idUser;
    data['nameUser'] = nameUser;
    data['emailUser'] = emailUser;
    data['statusUser'] = statusUser;
    data['createUser'] = createUser?.toIso8601String();

    return data;
  }
}
