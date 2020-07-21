import 'package:call_me_maybe/screens/predictor_screen.dart';
import 'package:call_me_maybe/screens/resume_screen.dart';
import 'package:flutter/material.dart';
import 'screens/business_card_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Call Me, Maybe?',
        theme: ThemeData(primarySwatch: Colors.teal),
        home: MainTabController());
  }
}

class MainTabController extends StatelessWidget {
  static const tabs = [
    Tab(icon: Icon(Icons.note)),
    Tab(icon: Icon(Icons.assignment)),
    Tab(icon: Icon(Icons.speaker_notes))
  ];

  final screens = [BusinessCardScreen(), ResumeScreen(), PredictorScreen()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // number of tabs
      length: 3,
      // which is first tab
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Call me, maybe?')),
          bottom: TabBar(tabs: tabs),
        ),
        body: TabBarView(children: screens)
      ),
    );
  }
}

