import 'package:flutter/material.dart';
import 'package:live_and_learn/learn/list.dart';

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
            Semantics(
              label: "Search tutorial",
              child: Ink(
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
            ),
            SizedBox(
              height: 8.0,
            ),
            Semantics(
              label: "Text label",
              hint: "Tap the search button above to activate",
              child: Text("Search Tutorial"),
            ),
            SizedBox(
              height: 16.0,
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.more),
                title: Text("View all tutorials"),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return LeanListView();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
