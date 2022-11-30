// ignore: file_names
import 'package:app2/main.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';


class Productos extends StatelessWidget {
  const Productos({super.key});

  @override
  Widget build(BuildContext context) {

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Zamora',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Michoacan',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      const Icon(
        Icons.star,
        color: Color.fromARGB(255, 13, 199, 183),
      ),
      const Text('5'),
    ],
  ),
);

 // ignore: no_leading_underscores_for_local_identifiers
 Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
  Color color = Theme.of(context).primaryColor;

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.whatsapp, 'Pedidos'),
    _buildButtonColumn(color, Icons.facebook, 'Pedidos'),
    _buildButtonColumn(color, Icons.share, 'Compartir'),
  ],
);

Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'This bag is quite beautiful \n for its colors and design \n that reminds of home',
    softWrap: true,
  ),
);


 return MaterialApp(
  debugShowCheckedModeBanner: false,
      title: 'Bolsa',

      home: Scaffold(
        appBar: AppBar(
           backgroundColor:  const Color.fromARGB(209, 6, 119, 104),
          title: const Text('Productos'),
        ),
        body: ListView(
          children: [Image.asset('imagenes/2.jpg',width: 600,height: 240,fit: BoxFit.cover,),
            titleSection,
            buttonSection,
            textSection],


        ),
          drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [Image.asset('imagenes/5.jpg',width: 400,height: 240,fit: BoxFit.cover,),
           /*  const DrawerHeader(
              /* decoration: BoxDecoration(
                color: Color.fromARGB(255, 11, 109, 76),
              ), */
              child: Text('Producto y otros :)'),
            ), */
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
              title: const Text('Inicio de sesion'),
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
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
      ),
      
    );



    }
}