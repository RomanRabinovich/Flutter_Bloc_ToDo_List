import 'package:flutter/material.dart';

class GroupFormWidgetModel {
  void saveGroup() {}
}

class GroupFormWidgetModelProvider extends InheritedWidget {
  final GroupFormWidgetModel model;
  GroupFormWidgetModelProvider(
      {Key? key, required this.model, required this.child})
      : super(key: key, child: child);

  final Widget child;

  static GroupFormWidgetModelProvider? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<GroupFormWidgetModelProvider>();
  }

  @override
  bool updateShouldNotify(GroupFormWidgetModelProvider oldWidget) {
    return true;
  }

  static read(BuildContext context) {}
}
