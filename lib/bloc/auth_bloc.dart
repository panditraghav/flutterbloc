import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthLoginRequested>(_onAuthLoginRequested);
    on<AuthLogoutRequested>(_onAuthLogoutRequested);
  }

  void _onAuthLoginRequested(event, emit) async {
    emit(AuthLoading());
    try {
      await Future.delayed(Duration(seconds: 1));
      // Validation
      if (event.email.isEmpty) {
        emit(AuthFailure("Please enter a valid email!"));
        return;
      }
      if (event.password.length < 6) {
        emit(AuthFailure("Password should be at least 6 characters long"));
        return;
      }
      emit(AuthSuccess(uid: "uid-${event.email}"));
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }

  void _onAuthLogoutRequested(event, emit) async {
    emit(AuthLoading());
    try {
      await Future.delayed(Duration(seconds: 1));
      emit(AuthInitial());
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }
}
