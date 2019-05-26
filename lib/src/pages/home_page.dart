import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario_app/src/share_pref/preferencias_usuario.dart';
import 'package:preferencias_de_usuario_app/src/widgets/drawer_widget.dart';


class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Color secundario:"),
          Divider(),
          Text("Género: ${prefs.genero}"),
          Divider(),
          Text("Nombre de usuario:"),
          Divider()
        ],
      ),
    );
  }


}
