import 'package:get/get.dart';
import 'package:wahid_chat_n_todolist/controller/data/local/task.dart';
import 'package:wahid_chat_n_todolist/model/task.dart';
import 'package:wahid_chat_n_todolist/service/function/delay.dart';

class TaskPageController extends GetxController {
  var listTasks = <TaskModel>[].obs;

  var selectedType = ''.obs;
  var taskType = ['Personal Errands', 'Urgent To-Do'];

  var loadData = true.obs;

  @override
  void onInit() {
    super.onInit();

    getData();
  }

  void getData() async {
    loadData.value = true;

    listTasks.value = tasksLocalData;
    listTasks.sort((a, b) => a.targetTime!.compareTo(b.targetTime!));

    await syncDelay(value: 2000);

    loadData.value = false;
  }

  void actionMethod({
    required String mode,
    dynamic data,
  }) {
    if (mode == 'type') {
      selectedType.value = data;
    }

    if (mode == 'finish') {
      int index = listTasks.indexWhere((task) => task.idTask == data);
      var task = listTasks[index];

      task.statusTask = !task.statusTask!;
      listTasks[index] = task;
    }

    if (mode == 'delete') {
      int index = listTasks.indexWhere((task) => task.idTask == data);
      var task = listTasks[index];

      listTasks.remove(task);
    }

    if (mode == 'date') {
      int index = listTasks.indexWhere((task) => task.idTask == data['id']);
      var task = listTasks[index];
      DateTime date = data['date'];

      task.targetTime = date;
      listTasks[index] = task;
    }
  }
}
