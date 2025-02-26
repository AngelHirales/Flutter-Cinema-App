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
          title: Image.asset(
            'assets/images/logo.png',
            width: 180, 
            height: 180,
          ),
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30.0,
          ),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          
          child: Container(
            width: double.infinity,
            color: const Color.fromARGB(234, 0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                
                const Text(
                  'Cartelera de Peliculas:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(
                  height: 250, // Altura del contenedor
                  child: Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          estructuraImagen(
                            'assets/images/sonic3.jpg',
                            'Sonic 3',
                            4.0,
                          ),
                          estructuraImagen(
                            'assets/images/superbad.jpg',
                            'Superbad',
                            4.0,
                          ),
                          estructuraImagen(
                            'assets/images/whitechiks.jpg',
                            'White Chiks',
                            5.0,
                          ),
                          estructuraImagen(
                            'assets/images/hangover2.jpg',
                            'Hangover part II',
                            4.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                
                const SizedBox(height: 10),
                const Text(
                  'Proximamente:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(
                  height: 250, // Altura del contenedor
                  child: Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          estructuraImagen(
                            'assets/images/nosferatu.jpg',
                            'Nosferatu',
                            4.5,
                          ),
                          estructuraImagen(
                            'assets/images/it.jpg',
                            'It',
                            4.0,
                          ),
                          estructuraImagen(
                            'assets/images/substance.jpg',
                            'The Substance',
                            5.0,
                          ),
                          estructuraImagen(
                            'assets/images/infinity.jpg',
                            'Avengers: Infiniry War',
                            4.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget estructuraImagen(String imageUrl, String label, double rating) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 5),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              width: 100,
              height: 150,
              color: Colors.grey[300],
              child: Image.asset(
                imageUrl,
                width: 120,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 5; i++)
                Icon(
                  i < rating.floor() ? Icons.star : Icons.star_border,
                  color: Colors.yellow, // color estrellas
                  size: 16,
                ),
              Text(
                '(${rating.toStringAsFixed(1)})',
                style: const TextStyle(fontSize: 12, color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}
