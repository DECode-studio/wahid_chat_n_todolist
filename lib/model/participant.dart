class ParticipantModel {
  String? idParticipant;
  String? idRoom;
  String? idUser;

  ParticipantModel({
    this.idParticipant,
    this.idRoom,
    this.idUser,
  });

  ParticipantModel.fromJson(Map<String, dynamic> json) {
    idParticipant = json['idParticipant'];
    idRoom = json['idRoom'];
    idUser = json['idUser'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    data['idParticipant'] = idParticipant;
    data['idRoom'] = idRoom;
    data['idUser'] = idUser;

    return data;
  }
}
