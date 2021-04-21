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
    final List<Widget> imageChildren = [
      Image.network(
        this.url,
        height: 180,
      ),
    ];

    if (this.explanation != null) {
      imageChildren.add(
        Container(
          padding: const EdgeInsets.only(
            bottom: 8.0,
            left: 8.0,
            right: 8.0,
          ),
          child: Text(
            this.explanation,
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
        ),
      );
    }

    return Container(
      child: Column(
        children: imageChildren,
      ),
    );
  }

  String read() {
    if (this.explanation == null) {
      return "An unlabeled image";
    }

    return "An image of ${this.explanation}";
  }

  Map<String, dynamic> toMap() {
    return {
      "type": this.type,
      "url": this.url,
      "explanation": this.explanation,
    };
  }
}
