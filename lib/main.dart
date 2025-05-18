import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloc/bloc/counter.dart';
import 'package:flutterbloc/cubit/todo_cubit.dart';
import 'package:flutterbloc/pages/add_todo.dart';
import 'package:flutterbloc/pages/home.dart';

import 'pages/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TodoCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => MyHomePage(title: "Home"),
          '/add-todo': (_) => AddTodoPage(),
          '/second': (_) => SecondPage(),
        },
      ),
    );
  }
}
