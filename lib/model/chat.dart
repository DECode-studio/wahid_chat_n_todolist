class ChatModel {
  String? idChat;
  String? idRoom;
  String? idSender;
  String? reffChat;
  String? dataChat;
  bool? statusChat;
  DateTime? createChat;

  ChatModel({
    this.idChat,
    this.idRoom,
    this.idSender,
    this.reffChat,
    this.dataChat,
    this.statusChat,
    this.createChat,
  });

  ChatModel.fromJson(Map<String, dynamic> json) {
    idChat = json['idChat'];
    idRoom = json['idRoom'];
    idSender = json['idSender'];
    reffChat = json['reffChat'];
    dataChat = json['dataChat'];
    statusChat = json['statusChat'];
    createChat =
        json['createChat'] != null ? DateTime.parse(json['createChat']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    data['idChat'] = idChat;
    data['idRoom'] = idRoom;
    data['idSender'] = idSender;
    data['reffChat'] = reffChat;
    data['dataChat'] = dataChat;
    data['statusChat'] = statusChat;
    data['createChat'] = createChat?.toIso8601String();

    return data;
  }
}
