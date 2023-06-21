import 'package:flutter/material.dart';
import 'package:marcoapp/model/model.dart';

class MainPersonajeScreen extends StatelessWidget {
  final Personajes personaje;
  const MainPersonajeScreen(this.personaje, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: Image.network(
              personaje.imagen,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(personaje.nombre)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(personaje.descripcion),
          ),
        ],
      ),
    );
  }
}
