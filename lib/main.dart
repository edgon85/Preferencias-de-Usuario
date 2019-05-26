import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario_app/src/pages/home_page.dart';
import 'package:preferencias_de_usuario_app/src/pages/settings_page.dart';
import 'package:preferencias_de_usuario_app/src/share_pref/preferencias_usuario.dart';

void main() async {
  final prefs = new PreferenciasUsuario();
  await prefs.initPref();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final prefs = new PreferenciasUsuario();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
    /*  theme: ThemeData(
        primarySwatch: Colors.blue,
      ),*/
    initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routeName : (BuildContext context) => HomePage(),
        SettingsPage.routeName : (BuildContext context) => SettingsPage(),
      },
    );
  }
}
