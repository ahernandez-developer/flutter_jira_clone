import 'package:flutter/material.dart';

import 'env.dart';

MaterialApp initApp() {
  //For demostration purpose only

  return MaterialApp(
    initialRoute: Router.proyects,
    routes: Router.routes,
    theme: appTheme(),
  );
}

ThemeData appTheme() => ThemeData().copyWith(
        appBarTheme: AppBarTheme(
      elevation: 1.0,
      color: Colors.white,
      actionsIconTheme: IconThemeData(color: Colors.blueAccent),
    ));
