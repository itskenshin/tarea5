import 'package:flutter/material.dart';
import 'package:marcoapp/views/acerca_de.dart';
import 'package:marcoapp/views/contactame.dart';
import 'package:marcoapp/views/mi_vida.dart';
import 'package:marcoapp/views/momentos.dart';
import 'package:marcoapp/views/personajes.dart';
import 'package:marcoapp/views/portada.dart';

const TextStyle tabtextstyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    fontFamily: 'Manrope',
    color: Colors.white);

const TextStyle subtitleStyleText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: 'Arial',
    color: Colors.white);

const TextStyle paragraphTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w200,
  fontFamily: 'Arial',
  letterSpacing: 1,
  height: 1.3,
  color: Color.fromRGBO(255, 255, 255, 1),
);

void main() {
  runApp(const MainApp());
}

class TextSubtitle extends StatelessWidget {
  final String text;
  final TextStyle estilos;

  const TextSubtitle(
      {super.key, required this.text, this.estilos = subtitleStyleText});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: estilos);
  }
}

class TextParagraph extends StatelessWidget {
  final String text;
  final TextStyle estilos;

  const TextParagraph(
      {super.key, required this.text, this.estilos = paragraphTextStyle});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: estilos);
  }
}

// class ContenedorPersonaje extends StatelessWidget {
//   final String nombre;
//   final AssetImage imagen;

//   const TextParagraph(
//       {super.key, required this.text, this.estilos = paragraphTextStyle});

//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }

//!  Estilos para los parrafos con titulo
class Parrafo extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final TextStyle estiloParrafo;
  final TextStyle estiloTitulo;

  const Parrafo(
      {super.key,
      required this.titulo,
      required this.descripcion,
      this.estiloParrafo = paragraphTextStyle,
      this.estiloTitulo = subtitleStyleText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 20,
          ),
          child: Text(
            titulo,
            style: subtitleStyleText,
          ),
        ),
        Text(
          descripcion,
          style: paragraphTextStyle,
        )
      ],
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(29, 30, 36, 1),
        body: DefaultTabController(
          length: 6, // Número total de pestañas
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(100), // Altura del TabBar
                  child: Container(
                      color: const Color.fromRGBO(29, 30, 36, 1),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(top: 30, bottom: 20, left: 30),
                            child: Text(
                              "Marco Polo",
                              style: tabtextstyle,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          TabBar(
                            isScrollable: true,
                            tabs: [
                              Center(
                                  child: Text(
                                "Portada",
                                style: TextStyle(fontSize: 14),
                              )),
                              Tab(text: 'Personajes'),
                              Tab(text: 'Momentos'),
                              Tab(text: 'Acerca de'),
                              Tab(text: 'Mi Vida'),
                              Tab(text: 'Contactame'),
                            ],
                          ),
                        ],
                      )),
                ),
              ),
              SliverFillRemaining(
                child: TabBarView(
                  children: [
                    const Portada(),
                    const PersonScreen(),
                    const Momentos(),
                    contacercade,
                    contmivida,
                    contcontactame,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
