import 'dart:html';

import 'package:app2/pages/Lista_productos.dart';
import 'package:app2/pages/Producto_1.dart';
import 'package:app2/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Inicio';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
         backgroundColor:  Color.fromARGB(209, 6, 119, 104),
         title: Text(title)),
      body: ListView(
          children: [Image.asset('imagenes/7.jpg',width: 400,height: 240,fit: BoxFit.cover,),
          const Center(
            
        child: 
        Text('Bienvenido a la aplicacion :) '
        '\n En el apartado de tu izquierda podras ver \n los diferentes productos o espacios que contamos'),
      ),
          ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [Image.asset('imagenes/5.jpg',width: 400,height: 240,fit: BoxFit.cover,),
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 11, 109, 76),
              ),
              child: Text('Productos y otros :)'),
            ),
            ListTile(
              title: const Text('Lista de productos'),
              onTap: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListaProductos()),
                   );
              },
            ),
            ListTile(
              title: const Text('.'),
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Productos()),
  );
              },
            ),
            ListTile(
              title: const Text('.'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
              
            ),
            ListTile(
              title: const Text('Iniciar Sesion'),
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Productos()),
  );
              },
            ),
          ],
        ),
      ),
    );
  }
}
