import 'package:flutter/widgets.dart';
import 'package:live_and_learn/entity/tutorial-step.dart';

class TutorialEntity {
  final String name;
  final String application;
  final String schema;

  final List<TutorialStep> steps;

  final bool android;
  final bool ios;

  TutorialEntity({
    @required this.name,
    @required this.application,
    @required this.schema,
    @required this.steps,
    this.android = false,
    this.ios = false,
  });

  Map<String, dynamic> toMap() {
    return {
      "name": this.name,
      "application": this.application,
      "schema": this.schema,
      "steps": this.steps.map((TutorialStep step) {
        return step.toMap();
      }).toList(),
      "android": this.android,
      "ios": this.ios,
    };
  }
}
