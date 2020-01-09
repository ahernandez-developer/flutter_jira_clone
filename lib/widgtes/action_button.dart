import 'package:flutter/material.dart' show IconButton; //only importing the necesary file
import 'package:flutter/widgets.dart';

class ActionButton extends StatelessWidget {
  final Function onPressed;
  final IconData icon;
  final EdgeInsets padding;
  ActionButton({this.onPressed, @required this.icon, this.padding})
      : assert(icon != null);
  @override
  Padding build(BuildContext context) {
    return Padding(
      padding: padding,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
      ),
    );
  }
}
