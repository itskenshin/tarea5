import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:marcoapp/main.dart';

const Padding contacercade = Padding(
    padding: EdgeInsets.only(
      top: 5,
      bottom: 40,
      left: 30,
      right: 30,
    ),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Titulo ("Acerca de")
          Padding(
            padding: EdgeInsets.only(top: 22, bottom: 10, right: 20),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 12.25),
                  child: Icon(
                    Ionicons.extension_puzzle,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                TextSubtitle(text: "Acerca de")
              ],
            ),
          ),
          // Subtitulo ("The Office")
          Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Parrafo(
                  titulo: "Marco Polo",
                  descripcion:
                      """Una aventura épica que sigue los años de juventud del famoso explorador Marco Polo y sus viajes por las exóticas tierras de la Ruta de la seda y del Kublai Kan. Avaricia, traición, intriga sexual y rivalidad dominan la corte, pero, a pesar de todo, el joven se convierte pronto en consejero de confianza del Kan que desea erigirse en el emperador del mundo.""")),
          // Subtitulo ("Temporadas")
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Parrafo(
                titulo: "Temporadas",
                descripcion: """1.12 de diciembre de 2014
                              \n2.1 de julio de 2016
                            """),
          ),
          // Subtitulo ("Creador")
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Parrafo(titulo: "Creador", descripcion: """John Fusco
."""),
          ),
        ],
      ),
    ));
