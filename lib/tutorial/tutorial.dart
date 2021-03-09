import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hardware_buttons/hardware_buttons.dart';
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
  StreamSubscription<VolumeButtonEvent> _volumeButtonSubscription;

  @override
  void initState() {
    super.initState();
    _volumeButtonSubscription = volumeButtonEvents.listen(
      (VolumeButtonEvent event) {
        print(event);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _volumeButtonSubscription?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
