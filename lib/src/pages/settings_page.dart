import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario_app/src/widgets/drawer_widget.dart';

class SettingsPage extends StatelessWidget {

  static final String routeName = 'settingsPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Ajustes'),
      ),

      drawer: MenuWidget(),
      body: Center(
        child: Text('Ajestes de systema'),
      ),
    );
  }
}
