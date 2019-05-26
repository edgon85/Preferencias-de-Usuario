import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario_app/src/pages/settings_page.dart';


class HomePage extends StatelessWidget {
  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
      ),
      drawer: _crearMenu(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Color secundario:"),
          Divider(),
          Text("Género:"),
          Divider(),
          Text("Nombre de usuario:"),
          Divider()
        ],
      ),
    );
  }

  Widget _crearMenu(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/menu-img.jpg'),
                    fit: BoxFit.cover)
            ),
          ),
          
          ListTile(
            leading: Icon(Icons.home, color: Colors.blue,),
            title: Text('Home'),
            onTap: (){
             return Navigator.pushNamed(context, HomePage.routeName);
            },
          ),


          ListTile(
            leading: Icon(Icons.party_mode, color: Colors.blue,),
            title: Text('Party mode'),
            onTap: (){},
          ),


          ListTile(
            leading: Icon(Icons.pages, color: Colors.blue,),
            title: Text('People'),
            onTap: (){},
          ),

          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue,),
            title: Text('Settings'),
            onTap: (){
              Navigator.pushReplacementNamed(context, SettingsPage.routeName);
            },
          )
        ],
      ),
    );
  }
}
