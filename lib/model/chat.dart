class ChatModel {
  String? idChat;
  String? idRoom;
  String? idSender;
  String? dataChat;
  bool? statusChat;
  DateTime? createChat;

  ChatModel({
    this.idChat,
    this.idRoom,
    this.idSender,
    this.dataChat,
    this.statusChat,
    this.createChat,
  });

  ChatModel.fromJson(Map<String, dynamic> json) {
    idChat = json['idChat'];
    idRoom = json['idRoom'];
    idSender = json['idSender'];
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
    data['dataChat'] = dataChat;
    data['statusChat'] = statusChat;
    data['createChat'] = createChat?.toIso8601String();

    return data;
  }
}
