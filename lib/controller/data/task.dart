import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:wahid_chat_n_todolist/model/task.dart';

class TaskDataController {
  final supabase = Supabase.instance.client;
  final table = 'tblTask';

  Future<List<TaskModel>> getAllTasks() async {
    var listData = <TaskModel>[];
    var data = await supabase.from(table).select();

    data.forEach((e) {
      listData.add(TaskModel.fromJson(e));
    });

    return listData;
  }

  Stream<List<TaskModel>> streamAllTasks() {
    return supabase.from(table).stream(primaryKey: ['idTask']).map((query) {
      List<TaskModel> data = [];

      query.forEach((e) {
        data.add(TaskModel.fromJson(e));
      });

      return data;
    });
  }

  Future<TaskModel> getTask(String idTask) async {
    var listData = <TaskModel>[];
    var data = await supabase.from(table).select().eq('idTask', idTask);

    data.forEach((e) {
      listData.add(TaskModel.fromJson(e));
    });

    return listData.isNotEmpty ? listData.first : TaskModel();
  }

  Stream<TaskModel> streamTask(String idTask) {
    return supabase
        .from(table)
        .stream(primaryKey: ['idTask'])
        .eq('idTask', idTask)
        .map((data) {
          return TaskModel.fromJson(data.first);
        });
  }

  Future<void> addTask(TaskModel data) async {
    await supabase.from(table).insert(data.toJson());
  }

  Future<void> updateTask(TaskModel data) async {
    await supabase
        .from(table)
        .update(data.toJson())
        .match({'idTask': data.idTask!});
  }

  Future<void> deleteTask(String idTask) async {
    await supabase.from(table).delete().match({'idTask': idTask});
  }
}
