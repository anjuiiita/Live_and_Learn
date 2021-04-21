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
      child: Semantics(
        child: Text(
          this.value,
          semanticsLabel: this.value.length > 20
              ? "${this.value.substring(0, 20)} and more"
              : this.value,
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }

  String read() {
    return this.value;
  }

  Map<String, dynamic> toMap() {
    return {
      "type": this.type,
      "value": this.value,
    };
  }
}
