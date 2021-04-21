import 'package:flutter/widgets.dart';
import 'package:live_and_learn/entity/element/image.dart';
import 'package:live_and_learn/entity/element/text.dart';

abstract class TutorialElement {
  final String type;

  TutorialElement({
    @required this.type,
  });

  factory TutorialElement.fromMap(Map<String, dynamic> map) {
    if (map['type'] == 'text') {
      return TutorialTextElement.fromMap(map);
    }

    if (map['type'] == 'image') {
      return TutorialImageElement.fromMap(map);
    }

    return null;
  }

  Widget build();
  String read();

  Map<String, dynamic> toMap();
}
