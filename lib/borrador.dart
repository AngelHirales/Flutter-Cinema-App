      /*
      body: Container(
        color: Colors.grey,
        height: double.infinity,
        width: double.infinity,
        child: Text('Hola'),
      ),*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('The App'),
          leading: Icon(
            Icons.home,
            color: Colors.black,
            size: 30.0,
          ),
          backgroundColor: Colors.indigo,
        ),
        body: Container(
          width: double.infinity,
          color: Color(0xffD6D6D6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Texto superior fijo
              Text(
                'Imagenes chidas:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10), // Espaciado entre el texto y las imágenes
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      estructuraImagen(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9rA5we79JbnQ4IyMXhyYQ-P-3dbovJEr_zQ&s',
                        100,
                        100,
                        'Imagen 1',
                      ),

                      estructuraImagen(
                        'https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExN3huZmlnMjE4aGhxY3Y1eHVkN2p6cnhzZDB3OWdrdWcycGVnY3F5biZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/tIeCLkB8geYtW/giphy.gif',
                        100,
                        100,
                        'GIF 2',
                      ),

                      estructuraImagen(
                        'https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExd2Y5NmYyMzUzeG9nb2kyN3lhdnFrZG5jN2ZmZThkNjc3NjRjZDJuOCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/tHIRLHtNwxpjIFqPdV/giphy.gif',
                        100,
                        100,
                        'GIF 2',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10), // Espaciado entre imágenes y texto final
              // Texto inferior fijo
              Text(
                'Fin',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

Widget estructuraImagen(String imageUrl, double width, double height, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 5),

          Image.network(
            imageUrl,
            width: width,
            height: height,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}