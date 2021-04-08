import 'package:flutter/material.dart';
import 'package:live_and_learn/entity/tutorial-element.dart';

class TutorialImageElement extends TutorialElement {
  final String url;

  TutorialImageElement(
    this.url,
  ) : super(
          type: 'image',
        );

  Widget build() {
    return Container(
      child: Image.network(
        this.url,
      ),
    );
  }
}
