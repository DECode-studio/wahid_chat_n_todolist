class RoomModel {
  String? idRoom;
  String? nameRoom;
  bool? statusRoom;
  DateTime? createRoom;

  RoomModel({
    this.idRoom,
    this.nameRoom,
    this.statusRoom,
    this.createRoom,
  });

  RoomModel.fromJson(Map<String, dynamic> json) {
    idRoom = json['idRoom'];
    nameRoom = json['nameRoom'];
    statusRoom = json['statusRoom'];
    createRoom =
        json['createRoom'] != null ? DateTime.parse(json['createRoom']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    data['idRoom'] = idRoom;
    data['nameRoom'] = nameRoom;
    data['statusRoom'] = statusRoom;
    data['createRoom'] = createRoom?.toIso8601String();

    return data;
  }
}
