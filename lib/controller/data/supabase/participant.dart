import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:wahid_chat_n_todolist/model/participant.dart';

class ParticipantDataController {
  final supabase = Supabase.instance.client;
  final table = 'tblParticipant';

  Future<List<ParticipantModel>> getAllParticipants() async {
    var listData = <ParticipantModel>[];
    var data = await supabase.from(table).select();

    data.forEach((e) {
      listData.add(ParticipantModel.fromJson(e));
    });

    return listData;
  }

  Stream<List<ParticipantModel>> streamAllParticipants() {
    return supabase
        .from(table)
        .stream(primaryKey: ['idParticipant']).map((query) {
      List<ParticipantModel> data = [];

      query.forEach((e) {
        data.add(ParticipantModel.fromJson(e));
      });

      return data;
    });
  }

  Future<ParticipantModel> getParticipant(String idParticipant) async {
    var listData = <ParticipantModel>[];
    var data =
        await supabase.from(table).select().eq('idParticipant', idParticipant);

    data.forEach((e) {
      listData.add(ParticipantModel.fromJson(e));
    });

    return listData.isNotEmpty ? listData.first : ParticipantModel();
  }

  Stream<ParticipantModel> streamParticipant(String idParticipant) {
    return supabase
        .from(table)
        .stream(primaryKey: ['idParticipant'])
        .eq('idParticipant', idParticipant)
        .map((data) {
          return ParticipantModel.fromJson(data.first);
        });
  }

  Future<void> addParticipant(ParticipantModel data) async {
    await supabase.from(table).insert(data.toJson());
  }

  Future<void> updateParticipant(ParticipantModel data) async {
    await supabase
        .from(table)
        .update(data.toJson())
        .match({'idParticipant': data.idParticipant!});
  }

  Future<void> deleteParticipant(String idParticipant) async {
    await supabase.from(table).delete().match({'idParticipant': idParticipant});
  }
}
