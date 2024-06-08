import 'dart:math';
import 'package:wahid_chat_n_todolist/model/room.dart';

var inboxLocalData = [
  RoomModel(
    idRoom: '1',
    nameRoom: 'Family Group',
    statusRoom: true,
    createRoom: randomDate(),
  ),
  RoomModel(
    idRoom: '2',
    nameRoom: 'Friends Group',
    statusRoom: true,
    createRoom: randomDate(),
  ),
  RoomModel(
    idRoom: '3',
    nameRoom: 'Work Group',
    statusRoom: true,
    createRoom: randomDate(),
  ),
  RoomModel(
    idRoom: '4',
    nameRoom: '',
    statusRoom: true,
    createRoom: randomDate(),
  ),
  RoomModel(
    idRoom: '5',
    nameRoom: '',
    statusRoom: true,
    createRoom: randomDate(),
  ),
];

DateTime randomDate() {
  final random = Random();
  final now = DateTime.now();
  return now.subtract(Duration(days: random.nextInt(365)));
}
