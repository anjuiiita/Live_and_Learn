import 'package:flutter/material.dart';

class LearnSubView extends StatefulWidget {
  @override
  _LearnSubViewState createState() => _LearnSubViewState();
}

class _LearnSubViewState extends State<LearnSubView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Ink(
              decoration: ShapeDecoration(
                color: Theme.of(context).accentColor,
                shape: CircleBorder(),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  iconSize: 48.0,
                  icon: const Icon(Icons.search),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text("Search Tutorial"),
          ],
        ),
      ),
    );
  }
}
