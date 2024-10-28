import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 253, 199, 196),
        title: Text(
          'Mi Tarjeta Digital',
          style:
              GoogleFonts.openSans(fontSize: 27, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 251, 89, 89),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // Desplazamiento de la sombra
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('assets/profile.png'), // Imagen del perfil
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Dairan S. De Jesús Mora',
                    style: GoogleFonts.alegreya(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'dairandemora.work@gmail.com',
                    style: GoogleFonts.openSans(fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '+1 (123) 456-7890',
                    style: GoogleFonts.openSans(fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'github.com/DairaDoo',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 20),
                  // Código QR (puede ser una imagen estática o generada por un paquete QR)
                  Image.asset(
                    'assets/qr-code.png',
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(height: 20),
                  // Botón de Expansión (solo como ejemplo visual)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          'Usuario de Github: DairaDoo',
                          style: GoogleFonts.openSans(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
