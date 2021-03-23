import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeechRecongiteController {
  final SpeechToText speechToText;

  SpeechRecongiteController() : speechToText = SpeechToText();

  void initialize() {
    this.speechToText.initialize(
      onStatus: (String status) {
        print(status);
      },
    );
  }

  void start(void Function(SpeechRecognitionResult result) onResult) {
    if (this.speechToText.isAvailable) {
      this.speechToText.listen(onResult: onResult);
    }
  }
}
