import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session_4/providers/counter_provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(builder: (context, counterProvider, _) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("screen 1"),
              const Text("you have pushed "),
              Text('${counterProvider.counter}'),
              ElevatedButton(
                  onPressed: () {
                    counterProvider.increment();
                  },
                  child: const Text("Increment")),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/2nd');
                },
                child: const Text("go to screen 2 "),
              )
            ],
          ),
        ),
      );
    });
  }
}
