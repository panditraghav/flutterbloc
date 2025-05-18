import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloc/cubit/todo_cubit.dart';
import 'package:flutterbloc/models/todo_model.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({super.key});

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add todo")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            TextField(controller: controller),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<TodoCubit>(context).add(
                  TodoModel(name: controller.text, createdAt: DateTime.now()),
                );
                Navigator.pop(context);
              },
              child: Text("Add Todo"),
            ),
          ],
        ),
      ),
    );
  }
}
