import 'dart:math';

import 'package:wahid_chat_n_todolist/model/user.dart';

var userLocalData = [
  UserModel(
    idUser: '1',
    nameUser: 'Admin',
    emailUser: 'admin@example.com',
    statusUser: true,
    createUser: randomDate(),
  ),
  UserModel(
    idUser: '2',
    nameUser: 'John Doe',
    emailUser: 'john.doe@example.com',
    statusUser: false,
    createUser: randomDate(),
  ),
  UserModel(
    idUser: '3',
    nameUser: 'Jane Smith',
    emailUser: 'jane.smith@example.com',
    statusUser: false,
    createUser: randomDate(),
  ),
  UserModel(
    idUser: '4',
    nameUser: 'Alice Johnson',
    emailUser: 'alice.johnson@example.com',
    statusUser: false,
    createUser: randomDate(),
  ),
  UserModel(
    idUser: '5',
    nameUser: 'Bob Brown',
    emailUser: 'bob.brown@example.com',
    statusUser: false,
    createUser: randomDate(),
  ),
];

DateTime randomDate() {
  final random = Random();
  final now = DateTime.now();
  return now.subtract(Duration(days: random.nextInt(365)));
}
