import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloc/bloc/auth_bloc.dart';
import 'package:flutterbloc/cubit/todo_cubit.dart';
import 'package:flutterbloc/pages/add_todo.dart';
import 'package:flutterbloc/pages/home.dart';
import 'package:flutterbloc/pages/login.dart';

import 'pages/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => TodoCubit()),
        BlocProvider(create: (_) => AuthBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.yellow,
            brightness: Brightness.dark,
          ),
        ),
        initialRoute: '/login',
        routes: {
          '/': (_) => MyHomePage(title: "Home"),
          '/add-todo': (_) => AddTodoPage(),
          '/second': (_) => SecondPage(),
          '/login': (_) => LoginPage(),
        },
      ),
    );
  }
}
