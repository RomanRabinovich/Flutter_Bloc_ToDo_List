import 'package:flutter/material.dart';

class GroupsWidget extends StatelessWidget {
  const GroupsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Groups'),
      ),
      body: const SafeArea(
        child: _GroupListWidget(),
      ),
    );
  }
}

class _GroupListWidget extends StatefulWidget {
  const _GroupListWidget({Key? key}) : super(key: key);

  @override
  State<_GroupListWidget> createState() => _GroupListWidgetState();
}

class _GroupListWidgetState extends State<_GroupListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 100,
      separatorBuilder: (BuildContext context, int index) {
        return const _GroupListRowWidget();
      },
      itemBuilder: (BuildContext context, int index) {
        return const Divider(height: 1);
      },
    );
  }
}

class _GroupListRowWidget extends StatelessWidget {
  const _GroupListRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('One-line with trailing widget'),
      trailing: Icon(Icons.more_vert),
    );
  }
}
