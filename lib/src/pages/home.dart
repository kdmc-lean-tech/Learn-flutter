import 'package:flutter/material.dart';
import 'package:widgets/src/providers/menu_provider.dart';
import 'package:widgets/src/utils/icon_string.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
        backgroundColor: Colors.orange,
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
        future: menuProvider.loadData(),
        builder: (context, AsyncSnapshot<List<dynamic>> snapshop) {
          return ListView(
            children: _listItem(snapshop.data, context),
          );
        },
        initialData: []);
  }

  List<Widget> _listItem(List<dynamic> options, BuildContext context) {
    return options.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item['texto']),
            leading: getIcon(item['icon'], Colors.orange),
            trailing: Icon(Icons.keyboard_arrow_down),
            onTap: () {
              Navigator.pushNamed(context, item['ruta']);
            },
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
