import 'package:flutter/material.dart';
import 'package:live_and_learn/learn/learn.dart';

class IndexView extends StatefulWidget {
  static const String route = '/index';

  @override
  _IndexViewState createState() => _IndexViewState();
}

class _IndexViewState extends State<IndexView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Live And Learn"),
      ),
      body: this._buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "Learn",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "History",
          ),
        ],
        currentIndex: this._selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildBody() {
    switch (this._selectedIndex) {
      case 0:
        return LearnSubView();
      case 1:
        return Container();
    }

    return Container();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
