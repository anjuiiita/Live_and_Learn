import 'package:flutter/material.dart';
import 'package:live_and_learn/entity/tutorial-element.dart';

class TutorialImageElement extends TutorialElement {
  final String url;
  final String explanation;

  TutorialImageElement(
    this.url, {
    this.explanation,
  }) : super(
          type: 'image',
        );

  Widget build() {
    return Container(
      child: Image.network(
        this.url,
      ),
    );
  }

  String read() {
    if (this.explanation == null) {
      return "An unlabeled image";
    }
    return "An image of ${this.explanation}";
  }
}
