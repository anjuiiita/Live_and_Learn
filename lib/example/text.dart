import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextExampleView extends StatefulWidget {
  @override
  _TextExampleViewState createState() => _TextExampleViewState();
}

class _TextExampleViewState extends State<TextExampleView> {
  final FlutterTts _flutterTts = FlutterTts();

  bool _playing = false;
  String _speaking = "";

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
    this._flutterTts.setCompletionHandler(() {
      this.setState(() {
        this._playing = false;
      });
    });
    this._flutterTts.setCancelHandler(() {
      this.setState(() {
        this._playing = false;
      });
    });
    this._flutterTts.setProgressHandler((text, start, end, word) {
      this.setState(() {
        this._speaking = word;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(this._playing ? 'Playing ${this._speaking}' : 'Not Playing'),
        ElevatedButton(
          onPressed: () async {
            print(await this._flutterTts.speak('I am a pony'));
            this.setState(() {
              this._playing = true;
            });
          },
          child: Text("Speak"),
        ),
        ElevatedButton(
          onPressed: () async {
            print(await this._flutterTts.stop());
          },
          child: Text("Stop"),
        ),
      ],
    );
  }
}
