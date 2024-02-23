import 'package:flutter/material.dart';
import 'package:task_2/Screens/todo_page.dart';

import 'Screens/add_task_page.dart';
import 'Screens/svg_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const HomePage(),
        routes: {
          '/todo': (context) => const TodoPage(),
          '/addTask': (context) => const AddTask(),
        });
  }
}
