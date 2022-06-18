import 'package:flutter/material.dart';

import '../groups/groups_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/groups/': (context) => const GroupsWidget(),
      },
      initialRoute: '/groups/',
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
