import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task.dart';
import 'package:todoapp/models/task_manager.dart';

class NewTaskManagerScreen extends StatelessWidget {
  NewTaskManagerScreen({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Add Task"),
      ),
      body: Align(
        alignment: Alignment(0.0, -0.9),
        child: SizedBox(
          width: size.width * 0.8,
          child: TextField(
              controller: _controller,
              decoration: const InputDecoration(hintText: "Ex. add sth"),
              onSubmitted: (text) {
                _controller.clear();
                Provider.of<TaskManager>(context, listen: false)
                    .add(Task(title: text));
              }),
        ),
      ),
    );
  }
}
