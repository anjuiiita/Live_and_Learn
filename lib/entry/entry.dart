import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:live_and_learn/entry/example.dart';

class LiveAndLearnEntry extends StatefulWidget {
  @override
  _LiveAndLearnEntryState createState() => _LiveAndLearnEntryState();
}

class _LiveAndLearnEntryState extends State<LiveAndLearnEntry> {
  @override
  void initState() {
    super.initState();

    final channelName = 'app.sudo.land/live_and_learn/example';
    final methodChannel = MethodChannel(channelName);
    methodChannel.setMethodCallHandler((MethodCall call) async {
      print(call);
    });
  }

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
