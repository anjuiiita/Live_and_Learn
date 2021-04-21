import 'package:flutter/material.dart';

class GMailPattern extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          child: Column(
            children: [
              Card(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.menu),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text("Search in mail"),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(),
                title: Text("Example mail title"),
                subtitle: Text("Content"),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
