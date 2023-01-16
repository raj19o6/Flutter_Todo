import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List ToDoList = [];
  // reference our box
  final _myBox = Hive.box('mybox');

  void createInitialData() {
    ToDoList = [];
  }

  //Load Data
  void loadData() {
    ToDoList = _myBox.get("TODOLIST");
  }

  //update hive database

  void updateDatabase() {
    _myBox.put('TODOLIST', ToDoList);
  }
}
