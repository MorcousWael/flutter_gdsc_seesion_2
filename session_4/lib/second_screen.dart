import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session_4/providers/counter_provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // context.read<CounterProvider>().increment();
    return Consumer<CounterProvider>(builder: (context, counterProvider, _) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("screen 2"),
              const Text("you have pushed "),
              Text('${counterProvider.counter}'),
              ElevatedButton(
                  onPressed: () {
                    counterProvider.increment();
                  },
                  child: const Text("Increment")),
            ],
          ),
        ),
      );
    });
  }
}
