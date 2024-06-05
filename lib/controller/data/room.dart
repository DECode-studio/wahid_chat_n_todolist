import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:wahid_chat_n_todolist/model/room.dart';

class RoomDataController {
  final supabase = Supabase.instance.client;
  final table = 'tblRoom';

  Future<List<RoomModel>> getAllRooms() async {
    var listData = <RoomModel>[];
    var data = await supabase.from(table).select();

    data.forEach((e) {
      listData.add(RoomModel.fromJson(e));
    });

    return listData;
  }

  Stream<List<RoomModel>> streamAllRooms() {
    return supabase.from(table).stream(primaryKey: ['idRoom']).map((query) {
      List<RoomModel> data = [];

      query.forEach((e) {
        data.add(RoomModel.fromJson(e));
      });

      return data;
    });
  }

  Future<RoomModel> getRoom(String idRoom) async {
    var listData = <RoomModel>[];
    var data = await supabase.from(table).select().eq('idRoom', idRoom);

    data.forEach((e) {
      listData.add(RoomModel.fromJson(e));
    });

    return listData.isNotEmpty ? listData.first : RoomModel();
  }

  Stream<RoomModel> streamRoom(String idRoom) {
    return supabase
        .from(table)
        .stream(primaryKey: ['idRoom'])
        .eq('idRoom', idRoom)
        .map((data) {
          return RoomModel.fromJson(data.first);
        });
  }

  Future<void> addRoom(RoomModel data) async {
    await supabase.from(table).insert(data.toJson());
  }

  Future<void> updateRoom(RoomModel data) async {
    await supabase
        .from(table)
        .update(data.toJson())
        .match({'idRoom': data.idRoom!});
  }

  Future<void> deleteRoom(String idRoom) async {
    await supabase.from(table).delete().match({'idRoom': idRoom});
  }
}
