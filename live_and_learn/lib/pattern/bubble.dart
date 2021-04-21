import 'package:flutter/material.dart';

class BubbleAble extends StatelessWidget {
  final Widget child;

  BubbleAble({
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        this.child,
      ],
    );
  }
}
