import 'package:flutter/material.dart';
import 'package:marcoapp/model/darta.dart';
import 'package:marcoapp/views/personaje.dart';

class PersonScreen extends StatelessWidget {
  const PersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainPersonajeScreen(
                    personajes[index],
                  ),
                ),
              );
            },
            child: Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(personajes[index].imagen),
                ),
                title: Text(personajes[index].nombre),
                subtitle: Text(personajes[index].descripcion),
              ),
            ),
          );
        },
        itemCount: personajes.length,
      ),
    );
  }
}
