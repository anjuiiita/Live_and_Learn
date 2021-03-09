import 'package:flutter/widgets.dart';
import 'package:live_and_learn/entity/tutorial-step.dart';

class TutorialEntity {
  final String name;
  final String application;
  final String schema;

  final List<TutorialStepEntity> steps;

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
}
