import 'package:flutter_bloc/flutter_bloc.dart';

sealed class CounterEvent {}

class CounterIncrement extends CounterEvent {}

class CounterDecrement extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(super.initialState) {
    on<CounterIncrement>((event, emit) {
      emit(state + 1);
    });

    on<CounterDecrement>((event, emit) {
      emit(state - 1);
    });
  }
}
