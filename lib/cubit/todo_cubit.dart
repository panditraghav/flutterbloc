import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloc/models/todo_model.dart';

class TodoCubit extends Cubit<List<TodoModel>> {
  TodoCubit() : super([]);

  void add(TodoModel todo) {
    emit([...state, todo]);
  }
}
