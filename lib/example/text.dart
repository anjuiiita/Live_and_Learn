import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextExampleView extends StatefulWidget {
  @override
  _TextExampleViewState createState() => _TextExampleViewState();
}

class _TextExampleViewState extends State<TextExampleView> {
  final FlutterTts flutterTts = FlutterTts();

  @override
  void initState() {
    super.initState();

    this.flutterTts.setSharedInstance(true);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
