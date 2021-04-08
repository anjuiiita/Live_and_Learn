import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:live_and_learn/entity/tutorial-step.dart';
import 'package:live_and_learn/entity/tutorial.dart';
import 'package:url_launcher/url_launcher.dart';

class TutorialView extends StatefulWidget {
  final TutorialEntity tutorial;

  TutorialView({
    @required this.tutorial,
  });

  @override
  _TutorialViewState createState() => _TutorialViewState();
}

class _TutorialViewState extends State<TutorialView> {
  final FlutterTts _flutterTts = FlutterTts();

  // ignore: unused_field
  bool _playing = false;
  // ignore: unused_field
  String _speaking = "";

  int _currentStep = 0;

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
  void dispose() {
    super.dispose();
    this._flutterTts.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          contentPadding: const EdgeInsets.all(0.0),
          title: Text(
            widget.tutorial.name,
            style: TextStyle(
              color: Theme.of(context).cardColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            widget.tutorial.application,
            style: TextStyle(
              color: Theme.of(context).cardColor,
            ),
          ),
        ),
      ),
      body: this._buildBody(),
    );
  }

  Widget _buildBody() {
    final TutorialStep currentStep = widget.tutorial.steps[this._currentStep];
    final TutorialStep lastStep = this._currentStep == 0
        ? null
        : widget.tutorial.steps[this._currentStep - 1];
    final TutorialStep nextStep =
        this._currentStep == widget.tutorial.steps.length - 1
            ? null
            : widget.tutorial.steps[this._currentStep + 1];

    if (currentStep == null) {
      return Container();
    }

    return Column(
      children: [
        Card(
          child: ListTile(
            leading: Icon(
              lastStep == null ? Icons.launch : Icons.chevron_left,
            ),
            title: Text(
              currentStep.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: lastStep == null
                ? Text("Launch Application")
                : Text("Back to Previous Step"),
            onTap: () {
              if (lastStep == null) {
                this._launchSchema();
              } else {
                this._stepChange(-1);
              }
            },
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              Container(
                child: widget.tutorial.steps[this._currentStep].build(
                  (String content) async {
                    await this._flutterTts.speak(content);
                    this.setState(
                      () {
                        this._playing = true;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Card(
          child: ListTile(
            title: nextStep == null
                ? Text("Launch Application")
                : Text("Go to Next Step"),
            subtitle: nextStep == null
                ? Text("This is already the last step")
                : Text("Next: ${nextStep.name}"),
            trailing: Icon(
              nextStep == null ? Icons.launch : Icons.chevron_right,
            ),
            onTap: () {
              if (nextStep == null) {
                this._launchSchema();
              } else {
                this._stepChange(1);
              }
            },
          ),
        ),
      ],
    );
  }

  void _stepChange(int value) async {
    await this._flutterTts.stop();

    this.setState(() {
      this._currentStep = this._currentStep + value;
    });
  }

  void _launchSchema() async {
    await this._flutterTts.stop();
    final bool launchCheck = await canLaunch(widget.tutorial.schema);

    if (!launchCheck) {
      return;
    }
    await launch(widget.tutorial.schema);
  }
}
