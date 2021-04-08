import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:live_and_learn/entity/tutorial-element.dart';

class TutorialStep {
  final String name;

  final List<TutorialElement> elements;

  TutorialStep({
    @required this.name,
    @required this.elements,
  });

  Widget build() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: this.elements.map(
        (TutorialElement element) {
          return Card(
            child: element.build(),
          );
        },
      ).toList(),
    );
  }
}
