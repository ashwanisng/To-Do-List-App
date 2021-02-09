import 'package:to_do_app/models/task.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier {
  List<Task> task = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Maggie'),
    Task(name: 'Buy Bread'),
  ];
}
