import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Trying out svgs and lisview",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => {Navigator.pushNamed(context, '/todo')},
              icon: const Icon(Icons.list))
        ],
      ),
      body: Column(
        children: <Widget>[
          SvgPicture.asset(
            "lib/Assets/svgs/task_plus.svg",
            width: 100,
            height: 100,
          ),
          SvgPicture.network(
            "https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/star.svg",
            width: 100,
            height: 100,
          ),
          const SizedBox(
            height: 100,
          ),
          Expanded(
            child: ListView(
              children: const [
                Icon(Icons.add),
                Icon(Icons.minimize),
                Icon(Icons.safety_divider_outlined),
                Center(
                    child: Text("hello our svg and list view just finished")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
