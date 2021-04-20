import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeechExampleView extends StatefulWidget {
  @override
  _SpeechExampleViewState createState() => _SpeechExampleViewState();
}

class _SpeechExampleViewState extends State<SpeechExampleView> {
  final SpeechToText _speechToText = SpeechToText();

  @override
  void initState() {
    super.initState();
    this._speechToText.initialize(
          onStatus: (String status) {
            print(status);
          },
          onError: (SpeechRecognitionError error) {
            print(error);
          },
          debugLogging: true,
        );
  }

  @override
  void dispose() {
    super.dispose();
    this._speechToText.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            if (this._speechToText.isAvailable) {
              print('Started');
              this._speechToText.listen(
                onResult: (SpeechRecognitionResult result) {
                  print(result);
                },
              );
            }
          },
          child: Text("Start"),
        ),
        ElevatedButton(
          onPressed: () {
            this._speechToText.stop();
          },
          child: Text("Stop"),
        ),
        ElevatedButton(
          onPressed: () {
            print(this._speechToText.isAvailable);
          },
          child: Text("Check Status"),
        ),
      ],
    );
  }
}
