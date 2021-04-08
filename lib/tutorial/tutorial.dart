import 'package:flutter/material.dart';
import 'package:live_and_learn/entity/tutorial-step.dart';
import 'package:live_and_learn/entity/tutorial.dart';

class TutorialView extends StatefulWidget {
  final TutorialEntity tutorial;

  TutorialView({
    @required this.tutorial,
  });

  @override
  _TutorialViewState createState() => _TutorialViewState();
}

class _TutorialViewState extends State<TutorialView> {
  int _currentStep = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
              } else {
                this.setState(() {
                  this._currentStep--;
                });
              }
            },
          ),
        ),
        Expanded(
          child: Card(
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    bottom: 8.0,
                  ),
                  child: widget.tutorial.steps[this._currentStep].build(),
                ),
              ],
            ),
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
              } else {
                this.setState(() {
                  this._currentStep = this._currentStep + 1;
                });
              }
            },
          ),
        ),
      ],
    );
  }
}
