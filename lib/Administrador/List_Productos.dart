import 'package:app2/pages/Producto_1.dart';
import 'package:app2/pages/Producto_2.dart';
import 'package:flutter/material.dart';
import 'package:app2/main.dart';


class ListaProductos extends StatelessWidget {
  const ListaProductos({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista de productos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Lista_Productos(titulo: 'Lista de productos'),
    );
  }
}

// ignore: camel_case_types
class Lista_Productos extends StatelessWidget {

  final String titulo;
  



  const Lista_Productos({super.key, required this.titulo});
  

  


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(209, 6, 119, 104),
        title: Text(titulo),
        
      ),
      body: ListView(
        children:
         const <Widget>[
          FichaProducto(nombre: 'Producto ejemplo', descripcion: 'Breve descripción del producto de ejemplo',
              precio: 21, imagen: '2.jpg', ),
          FichaProducto(nombre: 'Producto ejemplo', descripcion: 'Breve descripción del producto de ejemplo',
              precio: 21, imagen: '3.jpg'),
          FichaProducto(nombre: 'Producto ejemplo', descripcion: 'Breve descripción del producto de ejemplo',
              precio: 21, imagen: '4.jpg'),
          FichaProducto(nombre: 'Producto ejemplo', descripcion: 'Breve descripción del producto de ejemplo',
              precio: 21, imagen: '11.jpg'),
          FichaProducto(nombre: 'Producto ejemplo', descripcion: 'Breve descripción del producto de ejemplo',
              precio: 21, imagen: '13.jpg'),
        ],
      ),
       drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [Image.asset('imagenes/5.jpg',width: 400,height: 240,fit: BoxFit.cover,),
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 11, 109, 76)
              ),
              child: Text('Producto y otros :)'),
            ),
            ListTile(
              title: const Text('Pagina principal'),
              onTap: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
                   );
              },
            ),
            ListTile(
              title: const Text('.'),
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
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
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton( 
        onPressed: () {  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProductosD())); },
        child: const Icon(Icons.add),
      )
    );

    
  }


}

class FichaProducto extends StatelessWidget {

  final String nombre;
  final String descripcion;
  final int precio;
  final String imagen;
  
  

  const FichaProducto({super.key,  required this.nombre,  required this.descripcion,  required this.precio, required this.imagen});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: SizedBox(
            height: 150,
            child: Row(
              children: <Widget>[
                Image.asset("imagenes/$imagen"),
                Expanded (
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        TextButton(
                          onPressed: () { 
                            Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Productos()));
                          },
                          
                        child: Text(nombre, style: const TextStyle(fontWeight: FontWeight.bold,)),
                        ),
                        TextButton(
                          onPressed: () { 
                            Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProductosD()));
                          },
                          
                        child: Text(nombre, style: const TextStyle(fontWeight: FontWeight.bold,)),
                        ),
                        Text(descripcion),
                        Text("Precio: $precio"),
            
                      ]
                  )
                )
              ],
            )
            
        ),
    );
  }
}