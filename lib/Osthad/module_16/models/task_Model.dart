class TaskModel {
  final String title;
  final int? id;
  final bool isdone;

  //

  TaskModel({required this.id, required this.title, required this.isdone});

  Map<String, dynamic> toMap() {
    return {'id': id, 'title': title, 'isdone': isdone ? 1 : 0};
  }

  //factory mane holo nije nijeke call korhbe

  factory TaskModel.formMap(Map<String, dynamic> Map) {
    return TaskModel(
      id: Map['id'],
      title: Map['title'],
      isdone: Map['isdone'] == 1,
    );
  }
}
