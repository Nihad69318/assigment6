class TaskModel {
  String? name;
  int? id;
  bool? isdone;

  TaskModel({required this.name, required this.id, required this.isdone});

  Map<String, dynamic> ToMap() {
    return {'name': name, 'id': id, 'isdone': isdone};
  }
  factory TaskModel.formMap(Map<String,dynamic>map){
    return TaskModel(
        name:map['title'],

        id: map['id'],
        isdone:map['isdone']==1
    );
  }
}
