import 'package:flutter/material.dart';
import 'package:widgets/src/constants/constants.dart';

class HomePageTemp extends StatelessWidget {
  final options = list;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _createItems(),
    );
  }

  List<Widget> _createItems() {
    return options.map((opt) {
      return Column(
        children: [
          ListTile(
            title: Text(opt['title']),
            subtitle: Text(opt['subtitle']),
            leading: Icon(opt['icon']),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
