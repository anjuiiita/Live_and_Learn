import 'package:flutter/material.dart';

class ExampleView extends StatelessWidget {
  static const String route = '/example';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Live And Learn"),
      ),
      body: Container(
        child: Semantics(
          label: "Welcome Text",
          child: Text(
            "Try press here with VoiceOver",
          ),
        ),
      ),
    );
  }
}
