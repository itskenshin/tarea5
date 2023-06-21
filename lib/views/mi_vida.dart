import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:marcoapp/main.dart';

const Padding contmivida = Padding(
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
          // Titulo ("Mi experiencia")
          Padding(
            padding: EdgeInsets.only(top: 22, bottom: 10, right: 20),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 12.25),
                  child: Icon(
                    Ionicons.accessibility,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                TextSubtitle(text: "Mi experiencia")
              ],
            ),
          ),
          
          Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Parrafo(
                titulo: "Jonathan Montero Olivo",
                descripcion: """Marco Polo fue una serie importante para mí porque soy un apasionado de la historia y la cultura oriental. Me encantó sumergirme en la antigua China y explorar sus escenarios exóticos a través de la serie. Además, quedé impresionado por la calidad de producción y el cuidado puesto en cada detalle, desde los hermosos vestuarios hasta las elaboradas escenas de acción. La trama intrigante, llena de conspiraciones y luchas de poder, me mantuvo enganchado en cada episodio. Los personajes memorables y sus arcos de desarrollo me hicieron sentir una conexión emocional con la historia. En resumen, "Marco Polo" fue importante para mí porque combinó mi interés por la historia, mi fascinación por la cultura oriental y mi aprecio por una narrativa cautivadora y personajes memorables.""")),
          
          
        ],
      ),
    ));
