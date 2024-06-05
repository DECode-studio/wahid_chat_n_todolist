import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:wahid_chat_n_todolist/model/chat.dart';

class ChatDataController {
  final supabase = Supabase.instance.client;
  final table = 'tblChat';

  Future<List<ChatModel>> getAllChats() async {
    var listData = <ChatModel>[];
    var data = await supabase.from(table).select();

    data.forEach((e) {
      listData.add(ChatModel.fromJson(e));
    });

    return listData;
  }

  Stream<List<ChatModel>> streamAllChats() {
    return supabase.from(table).stream(primaryKey: ['idChat']).map((query) {
      List<ChatModel> data = [];

      query.forEach((e) {
        data.add(ChatModel.fromJson(e));
      });

      return data;
    });
  }

  Future<ChatModel> getChat(String idChat) async {
    var listData = <ChatModel>[];
    var data = await supabase.from(table).select().eq('idChat', idChat);

    data.forEach((e) {
      listData.add(ChatModel.fromJson(e));
    });

    return listData.isNotEmpty ? listData.first : ChatModel();
  }

  Stream<ChatModel> streamChat(String idChat) {
    return supabase
        .from(table)
        .stream(primaryKey: ['idChat'])
        .eq('idChat', idChat)
        .map((data) {
          return ChatModel.fromJson(data.first);
        });
  }

  Future<void> addChat(ChatModel data) async {
    await supabase.from(table).insert(data.toJson());
  }

  Future<void> updateChat(ChatModel data) async {
    await supabase
        .from(table)
        .update(data.toJson())
        .match({'idChat': data.idChat!});
  }

  Future<void> deleteChat(String idChat) async {
    await supabase.from(table).delete().match({'idChat': idChat});
  }
}
