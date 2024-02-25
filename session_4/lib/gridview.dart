import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                children: [
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.blue,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
