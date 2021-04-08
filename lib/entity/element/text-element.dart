import 'package:flutter/material.dart';
import 'package:live_and_learn/entity/tutorial-element.dart';

class TutorialTextElement extends TutorialElement {
  final String value;

  TutorialTextElement(
    this.value,
  ) : super(
          type: 'text',
        );

  Widget build() {
    return Container(
      child: Text(
        this.value,
      ),
    );
  }
}
