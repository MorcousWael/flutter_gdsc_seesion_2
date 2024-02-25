import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_2/Constants/app_colors.dart';
import 'package:task_2/generated/assets.dart';
import 'package:task_2/widgets/app_bar.dart';

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
      appBar: const CustomAppBar(text: TextConstants.todoTitle),
      body: Column(
        children: [
          const Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    Assets.svgsOSOS,
                  ),
                  minRadius: 40,
                ),
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      TextConstants.hello,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      TextConstants.hope,
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              )
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: AppColors.elevation,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        TextConstants.hello,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: SvgPicture.asset(Assets.svgsPin))
                    ],
                  ),
                  const Divider(
                    height: 2,
                    thickness: 2,
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                TextConstants.task,
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
