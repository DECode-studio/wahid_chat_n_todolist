class TaskModel {
  String? idTask;
  String? idUser;
  String? nameTask;
  String? descTask;
  DateTime? targetTime;
  bool? statusTask;
  bool? availableText;
  DateTime? createTask;

  TaskModel({
    this.idTask,
    this.idUser,
    this.nameTask,
    this.descTask,
    this.targetTime,
    this.statusTask,
    this.availableText,
    this.createTask,
  });

  TaskModel.fromJson(Map<String, dynamic> json) {
    idTask = json['idTask'];
    idUser = json['idUser'];
    nameTask = json['nameTask'];
    descTask = json['descTask'];
    targetTime = json['targetTime'];
    statusTask = json['statusTask'];
    availableText = json['availableText'];
    createTask =
        json['createTask'] != null ? DateTime.parse(json['createTask']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    data['idTask'] = idTask;
    data['idUser'] = idUser;
    data['nameTask'] = nameTask;
    data['descTask'] = descTask;
    data['targetTime'] = targetTime;
    data['statusTask'] = statusTask;
    data['availableText'] = availableText;
    data['createTask'] = createTask?.toIso8601String();

    return data;
  }
}
