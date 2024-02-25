import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session_4/gridview.dart';
import 'package:session_4/page_view.dart';
import 'package:session_4/providers/counter_provider.dart';
import 'package:session_4/second_screen.dart';

import 'first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/4nd',
        routes: {
          '/home': (context) => MyHomePage(),
          '/2nd': (context) => SecondScreen(),
          '/3nd': (context) => const GridViewPage(),
          '/4nd': (context) => const PageViewScreen(),
        },
      ),
    );
  }
}
