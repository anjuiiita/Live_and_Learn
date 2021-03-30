import 'package:flutter/material.dart';
import 'package:live_and_learn/example/message.dart';
import 'package:live_and_learn/example/speech.dart';
import 'package:live_and_learn/example/text.dart';
import 'package:live_and_learn/tutorial/tutorial.dart';

class ExampleView extends StatelessWidget {
  static const String route = '/example';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Live And Learn"),
      ),
      body: Container(
        child: ListView(
          children: [
            Semantics(
              label: "Welcome Text",
              child: Text("Try press here with VoiceOver"),
            ),
            Semantics(
              label: "Welcome Text",
              child: ListTile(
                title: Text("Try press here with VoiceOver"),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return TutorialView(
                          tutorial: sendMessageTutorial,
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            SpeechExampleView(),
            TextExampleView(),
          ],
        ),
      ),
    );
  }
}
