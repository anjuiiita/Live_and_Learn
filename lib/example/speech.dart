import 'package:flutter/material.dart';
import 'package:live_and_learn/speech/recongnite.dart';

class SpeechExampleView extends StatefulWidget {
  @override
  _SpeechExampleViewState createState() => _SpeechExampleViewState();
}

class _SpeechExampleViewState extends State<SpeechExampleView> {
  final SpeechRecongiteController _speechController =
      SpeechRecongiteController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text("Start"),
        ),
      ],
    );
  }
}
