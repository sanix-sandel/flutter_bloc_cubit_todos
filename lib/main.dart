import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todos/todo_bloc_observer.dart';

import 'app.dart';

void main() async{
  BlocOverrides.runZoned(
    () => runApp(const App()),
    blocObserver: TodoBlocObserver(), //this bloc will allow to observe any change in the Bloc
  );
}