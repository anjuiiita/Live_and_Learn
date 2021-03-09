import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:live_and_learn/entry/example.dart';

class LiveAndLearnEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('zh'),
      ],
      title: 'Live And Learn',
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      routes: {
        ExampleView.route: (context) => ExampleView(),
      },
      initialRoute: ExampleView.route,
    );
  }
}
