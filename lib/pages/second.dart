import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloc/bloc/counter.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  static route() {
    return MaterialPageRoute(
      builder: (BuildContext context) => const SecondPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Second")),
      body: Center(
        child: Text(
          '${counterBloc.state}',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
