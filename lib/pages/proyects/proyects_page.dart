import 'package:flutter/material.dart';
import '../../widgtes/proyect_list_tile.dart';
import 'app_bar.dart';

class ProyectsPage extends StatelessWidget {
  final TextStyle sectionTitle = TextStyle(color: Colors.grey, fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: buildAppBar(),
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Visto recientemente",
            style: sectionTitle,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (BuildContext context, int currentProyect) =>
              ProyectListTile(
            title: "EPNO",
            subtitle: "EPNO",
            options: [
              DropDownOption(
                  title: "configuración del proyecto",
                  onTap: () => print("tapped on $currentProyect"))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Todos los proyectos",
            style: sectionTitle,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (BuildContext context, int currentProyect) =>
              ProyectListTile(
            title: "EPNO",
            subtitle: "EPNO",
            options: [
              DropDownOption(
                  title: "configuración del proyecto",
                  onTap: () => print("tapped on $currentProyect"))
            ],
          ),
        ),
      ]),
    ));
  }
}
