import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Constants/constants.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List<Map<String, String>> listItems = [
    {'title': 'Finals Study', 'subtitle': '3 Tasks'},
    {'title': 'Flutter course', 'subtitle': '90 Tasks XD'},
    {'title': 'keda', 'subtitle': '3azma awyyyyy'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("lib/Assets/svgs/GDSCLogo.png"),
        title: const Text(
          Constants.todoTitle,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [SvgPicture.asset('lib/Assets/svgs/settings.svg')],
      ),
      body: Column(
        children: [
          const Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "lib/Assets/svgs/OSOS.jpg",
                  ),
                  minRadius: 40,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      Constants.hello,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      Constants.hope,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                Constants.task,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                color: Colors.blue,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/addTask');
                  },
                  icon: const Icon(Icons.add),
                  splashColor: Colors.blue,
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: listItems.length,
                itemExtent: 80,
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      color: Colors.grey,
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: ListTile(
                        title: Text(listItems[index]['title']!),
                        subtitle: Text(listItems[index]['subtitle']!),
                        trailing: const Icon(Icons.more_vert),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
