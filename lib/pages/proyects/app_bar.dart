import 'package:flutter/material.dart';
import '../../widgtes/action_button.dart';
AppBar buildAppBar() {
  return AppBar(
    title: Text(
      "Proyectos",
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w500, fontSize: 22.0),
    ),
    actions: <Widget>[
      ActionButton(
        icon: Icons.search,
        padding: EdgeInsets.symmetric(horizontal: 2.0),
        onPressed: () => print("Search"),
      ),
      ActionButton(
        icon: Icons.add,
        padding: EdgeInsets.symmetric(horizontal: 2.0),
        onPressed: () => print("Add"),
      ),
    ],
  );
}
