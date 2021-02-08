import 'package:flutter/material.dart';
import 'package:flutter_tes_fan/ui/table_screen.dart';

import 'config/routes.dart';

void main() {
  runApp(TableScreen());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          currentFocus.focusedChild.unfocus();
        }
      },
      child: MaterialApp(
        title: 'Tes Fan',
        debugShowCheckedModeBanner: false,
        routes: routes(),
        onGenerateRoute: (settings) => generatedRoutes(settings),
        home: TableScreen(),
      ),
    );
  }
}
