import 'package:flutter/material.dart';
import 'package:live_and_learn/entity/tutorial.dart';

class TutorialView extends StatefulWidget {
  final TutorialEntity tutorial;

  TutorialView({
    @required this.tutorial,
  });

  @override
  _TutorialViewState createState() => _TutorialViewState();
}

class _TutorialViewState extends State<TutorialView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
