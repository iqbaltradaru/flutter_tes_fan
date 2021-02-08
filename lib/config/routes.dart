import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tes_fan/ui/table_screen.dart';

MaterialPageRoute<dynamic> generatedRoutes(settings) {
  MaterialPageRoute routes;
  switch (settings.name) {
  }
  return routes;
}

Map<String, Widget Function(BuildContext)> routes() {
  return <String, WidgetBuilder>{
    TableScreen.routeName: (BuildContext context) => new TableScreen(),
  };
}
