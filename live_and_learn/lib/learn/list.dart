import 'package:flutter/material.dart';
import 'package:live_and_learn/entity/tutorial.dart';
import 'package:live_and_learn/mock/example.dart';
import 'package:live_and_learn/mock/gmail.dart';
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
          this._buildTile(exampleTutorial, 0, 1),
          this._buildTile(gmailChatTutorial, 1, 2),
        ],
      ),
    );
  }

  Widget _buildTile(TutorialEntity tutorial, int index, int total) {
    return Semantics(
      value:
          "Tutorial name: ${tutorial.name}, application name: ${tutorial.application}",
      hint: "Part of tutorial list, tutorial ${index + 1} of $total",
      child: ListTile(
        leading: Icon(Icons.sports_handball),
        title: Semantics(
          value: "Tutorial Name",
          hint: "Double click to activate tutorial",
          child: Text(tutorial.name),
        ),
        subtitle: Semantics(
          value: "Application Name",
          hint: "Double click to activate tutorial",
          child: Text(tutorial.application),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return TutorialView(
                  tutorial: tutorial,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
