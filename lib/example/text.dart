import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextExampleView extends StatefulWidget {
  @override
  _TextExampleViewState createState() => _TextExampleViewState();
}

class _TextExampleViewState extends State<TextExampleView> {
  final FlutterTts _flutterTts = FlutterTts();

  @override
  void initState() {
    super.initState();

    this._flutterTts.setSharedInstance(true);
    this._flutterTts.setIosAudioCategory(
      IosTextToSpeechAudioCategory.playAndRecord,
      [
        IosTextToSpeechAudioCategoryOptions.allowBluetooth,
        IosTextToSpeechAudioCategoryOptions.allowBluetoothA2DP,
        IosTextToSpeechAudioCategoryOptions.mixWithOthers,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            this._flutterTts.speak('hello');
            await this._flutterTts.awaitSpeakCompletion(true);
          },
          child: Text("Speak"),
        ),
      ],
    );
  }
}
