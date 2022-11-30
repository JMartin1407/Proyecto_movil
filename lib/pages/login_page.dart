import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  
  static String  id = "Login_page";

  const LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const  Color.fromARGB(209, 6, 119, 104),
        body: 
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset('imagenes/8.jpg',width: 400,height: 240,fit: BoxFit.cover,),
            Text(
              "Bienvenido(a) a \n Oaxaca entre tus manos".toUpperCase(),
               textAlign:  TextAlign.center,
               style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'impact',
               ),
              ),
              const SizedBox(
                height: 15.0,
                ),
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text('Registrate',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        
                      ),
                      ),
                      const Text('Iniciar sesion', 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      )
                    ],
                ),
              const SizedBox(
                height: 25.0,
              ),
              _textFieldName(),
               const SizedBox(
                height: 15.0,
              ),
              _TextFieldEmail(),
               const SizedBox(
                height: 15.0,
              ),
              _TextFieldPassword(),
               const SizedBox(
                height: 15.0,
              ),
          ]),
        ),
         
        )
      );
      
  }
  Widget _textFieldName() {
return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 30.0
    ),
    decoration: BoxDecoration(
       color: Colors.white,
       borderRadius: BorderRadius.circular(30),
    ),
    child: TextField(
      
    decoration: const InputDecoration(
      prefixIcon: Icon(Icons.person_outlined),
       labelText: "nombre",
      hintText: "", 
    ),
      onChanged: (value){}, 
    ),
  );
  }


  }

  // ignore: non_constant_identifier_names
  Widget _TextFieldEmail() {

return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 30.0
    ),
    decoration: BoxDecoration(
       color: Colors.white,
       borderRadius: BorderRadius.circular(30),
    ),
    child: TextField(
      
    decoration: const InputDecoration(
      prefixIcon: Icon(Icons.email),
       labelText: "Correo",
      hintText: "", 
    ),
      onChanged: (value){}, 
    ),
  );
  }

  // ignore: non_constant_identifier_names
  Widget _TextFieldPassword() {

return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 30.0
    ),
    decoration: BoxDecoration(
       color: Colors.white,
       borderRadius: BorderRadius.circular(30),
    ),
    
    child: TextField(
      
    decoration: const InputDecoration(
      prefixIcon: Icon(Icons.password),
      
       labelText: "Contraseña",
      hintText: "", 
    ),
      onChanged: (value){}, 
    ),
    
  );
  }
