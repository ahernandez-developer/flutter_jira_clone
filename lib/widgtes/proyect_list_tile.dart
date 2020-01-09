
import 'package:flutter/material.dart';

class ProyectListTile extends StatefulWidget {
  final Image image;
  final String title;
  final String subtitle;
  final List<DropDownOption> options;

  ProyectListTile({this.image, this.title, this.subtitle, this.options});

  @override
  ProyectListTileState createState() => new ProyectListTileState();
}

class ProyectListTileState extends State<ProyectListTile> {
  @override
  ListTile build(BuildContext context) {
    String currentOption;

    return ListTile(
      leading: CircleAvatar(
          child: widget.image ?? Icon(Icons.supervised_user_circle)),
      title: Text(widget.title),
      subtitle: Text(
        widget.subtitle,
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      trailing: DropdownButtonHideUnderline(
        child: DropdownButton(
          underline: null,
          icon: Icon(Icons.more_vert),
          value: currentOption,
          onChanged: (String value) => setState(() {
            currentOption = value;
          }),
          items: widget.options
              .map((DropDownOption option) => DropdownMenuItem(
                    value: widget.title,
                    child: InkWell(
                      child: Text(option.title),
                      onTap: option.onTap,
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}

class DropDownOption {
  final Function onTap;
  final String title;
  DropDownOption({@required this.onTap, @required this.title})
      : assert(title != null);
}
