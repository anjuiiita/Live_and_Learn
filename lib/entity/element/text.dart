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
      padding: const EdgeInsets.all(
        8.0,
      ),
      child: Text(
        this.value,
        style: TextStyle(
          fontSize: 15.0,
        ),
      ),
    );
  }
}
