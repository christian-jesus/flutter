import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.black,
      child: Row(
        children: [
          // Botón de inicio
          Expanded(
            child: IconButton(
              onPressed: () {
                // Código para ir al inicio
              },
              icon: Icon(Icons.home),
              color: Colors.white,
            ),
          ),
          // Botón de amigos
          Expanded(
            child: IconButton(
              onPressed: () {
                // Código para ir a amigos
              },
              icon: Icon(Icons.people),
              color: Colors.white,
            ),
          ),
          // Botón de subir video
          Expanded(
            child: IconButton(
              onPressed: () {
                // Código para subir video
              },
              icon: Icon(Icons.video_call),
              color: Colors.white,
            ),
          ),
          // Botón de bandeja de entrada
          Expanded(
            child: IconButton(
              onPressed: () {
                // Código para ir a bandeja de entrada
              },
              icon: Icon(Icons.chat),
              color: Colors.white,
            ),
          ),
          // Botón de perfil
          Expanded(
            child: IconButton(
              onPressed: () {
                // Código para ir al perfil
              },
              icon: Icon(Icons.person),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
