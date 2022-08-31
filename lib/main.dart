import 'package:flutter/material.dart';
import 'package:text_project/config/theme.dart';

import 'leader_board.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      // onGenerateRoute: AppRoute.onGenerateRoute,
      // initialRoute: HomeScreen.routeName,
      home: const LeaderBoard(),
    );
  }
}



