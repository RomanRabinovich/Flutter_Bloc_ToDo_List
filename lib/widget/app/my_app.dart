import 'package:flutter/material.dart';
import 'package:flutter_todo_list_hive/widget/group_form/group_form_widget.dart';

import '../groups/groups_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/groups': (context) => const GroupsWidget(),
        '/groups/form': (context) => const GroupFormWidget(),
      },
      initialRoute: '/groups',
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
