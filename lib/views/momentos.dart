import 'package:flutter/material.dart';
import 'package:marcoapp/model/darta.dart';
import 'package:marcoapp/views/screenmomento.dart';

class Momentos extends StatelessWidget {
  const Momentos({super.key});

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
                  builder: (context) => MomentoScreen(
                    momentos[index],
                  ),
                ),
              );
            },
            child: Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(momentos[index].foto),
                ),
                title: Text(momentos[index].titulo),
                
              ),
            ),
          );
        },
        itemCount: personajes.length,
      ),
    );
  }
}
