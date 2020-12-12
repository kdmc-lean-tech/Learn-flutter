import 'package:flutter/material.dart';
import 'package:widgets/src/pages/alert_page.dart';
import 'package:widgets/src/pages/avatar_page.dart';
import 'package:widgets/src/pages/card_page.dart';
import 'package:widgets/src/pages/home.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => Home(),
    'alert': (BuildContext context) => Alert(),
    'avatar': (BuildContext context) => Avatar(),
    'card': (BuildContext context) => CardPage()
  };
}
