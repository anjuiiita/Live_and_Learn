import 'package:flutter/material.dart';
import 'package:live_and_learn/entity/tutorial.dart';
import 'package:live_and_learn/mock/example.dart';
import 'package:live_and_learn/tutorial/tutorial.dart';

class LeanListView extends StatefulWidget {
  @override
  _LeanListViewState createState() => _LeanListViewState();
}

class _LeanListViewState extends State<LeanListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Tutorials"),
      ),
      body: ListView(
        children: [
          this._buildTile(exampleTutorial),
        ],
      ),
    );
  }

  Widget _buildTile(TutorialEntity tutorial) {
    return ListTile(
      leading: Icon(Icons.sports_handball),
      title: Text(tutorial.name),
      subtitle: Text(tutorial.application),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return TutorialView(
                tutorial: exampleTutorial,
              );
            },
          ),
        );
      },
    );
  }
}
