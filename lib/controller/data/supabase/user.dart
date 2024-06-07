import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:wahid_chat_n_todolist/model/user.dart';

class UserDataController {
  final supabase = Supabase.instance.client;
  final table = 'tblUser';

  Future<List<UserModel>> getAllUsers() async {
    var listData = <UserModel>[];
    var data = await supabase.from(table).select();

    data.forEach((e) {
      listData.add(UserModel.fromJson(e));
    });

    return listData;
  }

  Stream<List<UserModel>> streamAllUsers() {
    return supabase.from(table).stream(primaryKey: ['idUser']).map((query) {
      List<UserModel> data = [];

      query.forEach((e) {
        data.add(UserModel.fromJson(e));
      });

      return data;
    });
  }

  Future<UserModel> getUser(String idUser) async {
    var listData = <UserModel>[];
    var data = await supabase.from(table).select().eq('idUser', idUser);

    data.forEach((e) {
      listData.add(UserModel.fromJson(e));
    });

    return listData.isNotEmpty ? listData.first : UserModel();
  }

  Stream<UserModel> streamUser(String idUser) {
    return supabase
        .from(table)
        .stream(primaryKey: ['idUser'])
        .eq('idUser', idUser)
        .map((data) {
          return UserModel.fromJson(data.first);
        });
  }

  Future<void> addUser(UserModel data) async {
    await supabase.from(table).insert(data.toJson());
  }

  Future<void> updateUser(UserModel data) async {
    await supabase
        .from(table)
        .update(data.toJson())
        .match({'idUser': data.idUser!});
  }

  Future<void> deleteUser(String idUser) async {
    await supabase.from(table).delete().match({'idUser': idUser});
  }
}
