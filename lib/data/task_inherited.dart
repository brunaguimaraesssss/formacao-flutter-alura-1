import 'package:flutter/material.dart';

import '../components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task('Aprender Flutter no curso da Alura',
        'assets/images/flutter.png', 4),
    Task('Andar de bike', 'assets/images/bike.png', 3),
    Task('Ir no Correios', 'assets/images/correios.png', 1),
    Task('Ir no mercado', 'assets/images/mercado.png', 1),
    Task('Caminhar', 'assets/images/caminhar.png', 2),
    Task('Estudar', 'assets/images/estudar.png', 4),
    Task('Cozinhar', 'assets/images/cozinhar.png', 2),
  ];

  void newTask(String name, String photo, int difficulty){
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result = context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
