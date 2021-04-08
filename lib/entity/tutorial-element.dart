import 'package:flutter/widgets.dart';

abstract class TutorialElement {
  final String type;

  TutorialElement({
    @required this.type,
  });

  Widget build();
  String read();
}
