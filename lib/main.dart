import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        useMaterial3: true,
      ),
      home: const PChopStore(),
    );
  }
}

class PChopStore extends StatelessWidget {
  const PChopStore({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de datos para las 5 tarjetas
    final List<Map<String, String>> productos = [
      {
        'titulo': 'PC gamer X',
        'desc': 'Potencia extrema para diseño y gaming.',
        'url': 'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/producto1.jpg'
      },
      {
        'titulo': 'Auriculares Hi-Fi',
        'desc': 'Cancelación de ruido activa y sonido 8D.',
        'url': 'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/producto5.jpg'
      },
      {
        'titulo': 'Iphone',
        'desc': 'Cámara de 200MP y batería de larga duración.',
        'url': 'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/producto3.jpg'
      },
      {
        'titulo': 'Mouse Gamer RGB',
        'desc': 'Precisión milimétrica con 16,000 DPI.',
        'url': 'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/producto2.jpg'
      },
      {
        'titulo': 'Teclado Mecánico',
        'desc': 'Switches Red para una escritura suave y rápida.',
        'url': 'https://raw.githubusercontent.com/Adrian-Hazael-hdz/Imagenes-para-flutter-IAM-6to-I-fecha-11-feb-026/refs/heads/main/producto4.jpg'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('PChop - Adrian Hernandez 6I', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      backgroundColor: Colors.purple[50],
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: productos.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                // Imagen izquierda
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                  child: Image.network(
                    productos[index]['url']!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                
                // Texto derecha
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productos[index]['titulo']!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          productos[index]['desc']!,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}