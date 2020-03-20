import 'package:flutter/material.dart';

class ConfigurationPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        
        title: Text("Configuracion", style: TextStyle(color: Colors.black),),
      ),
        body: SingleChildScrollView(    
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                color: Colors.yellow,
                margin: const EdgeInsets.all(7.0),
                child: ListTile(
                  onTap: (){
                    //abrir editar para editar perfil
                  },
<<<<<<< Updated upstream:lib/pages/Configuration_app.dart
                  title: Text('Nombre', style: TextStyle(color: Colors.white, 
=======
                  title: Text('Join to premium!', style: TextStyle(color: Colors.white, 
>>>>>>> Stashed changes:lib/pages/configuration_page.dart
                    fontWeight: FontWeight.w500 ),),
                  
                  leading: Icon(Icons.stars, color: Colors.white,)
                  ),//cambiar por imagen
                  
                
              ),
              const SizedBox(height: 10.0), 
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.lock_outline, color: Colors.blueAccent,),
                    title: Text('Cambiar contraseña'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){
                      //abrir cambiar contraseña
                    },
                    
                    ),
                  ListTile(
                    leading: Icon(Icons.location_searching, color: Colors.blueAccent,),
                    title: Text('Estado del virus'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){
                      //abrir cambiar virus
                    },
                    ),
                  ListTile(
                    leading: Icon(Icons.local_hospital, color: Colors.blueAccent,),
                    title: Text('Ayuda'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){
                      //abrir cambiar Ayuda
                    },
                    ),
                  ListTile(
                    leading: Icon(Icons.language, color: Colors.blueAccent,),
                    title: Text('Idioma'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){
                      //abrir cambiar Idioma
                    },
                    ),
                  ],),         
              ),
              const SizedBox(height: 10.0,),
              Text("   Notificaciones", style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
              ),),
              SwitchListTile(
                value: true,
                title: Text("Activar notificaciones"),
                onChanged: null,
              )
            ],
            
          ),
        ), 
      
      );
  }
}