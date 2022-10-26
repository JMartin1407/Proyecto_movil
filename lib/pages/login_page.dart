/* import 'package:flutter/material.dart';
import 'package:app2/main.dart';

class LoginPage extends StatelessWidget{
  static String  id = "Login_page";
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 11, 137, 168),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(
              "Bienvenido(a) a \n products industris".toUpperCase(),
               textAlign:  TextAlign.center,
               style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'impact',
               ),
              ),
              SizedBox(
                height: 15.0,
                ),
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Registrate',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Text('Iniciar sesion', 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                      )
                    ],
                ),
              SizedBox(
                height: 25.0,
              ),
              _textFieldName(),
               SizedBox(
                height: 15.0,
              ),
              _TextFieldEmail(),
               SizedBox(
                height: 15.0,
              ),
              _TextFieldPassword(),
               SizedBox(
                height: 15.0,
              ),
          ]),
        ),
        )
      );
  }
  Widget _textFieldName() {
return _TextFieldGeneral(
  labelText: 'nombre',
  hintText: 'Martin',
  onChanged: (value) {},
);
  }
  Widget _TextFieldEmail() {
return TextField();
  }

  Widget _TextFieldPassword() {
return TextField();
  }
  

  


}
class _TextFieldGeneral extends StatelessWidget{
  final String labelText;
  final String hintText;
  final Function onChanged;
  final TextInputType keyboardType;
  const _TextFieldGeneral({ 
     required this.labelText, 
     required this.hintText, 
     required this.onChanged,
     required this.keyboardType});
  
 @override
  Widget build(BuildContext context) {  
  
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: 30.0
    ),
    decoration: BoxDecoration(
       color: Colors.white,
       borderRadius: BorderRadius.circular(30),
    ),
    child: TextField(
      keyboardType: keyboardType,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.person_outlined
      ),
      labelText: labelText,
      hintText: hintText,
    ),
     onChanged: onChanged,
    ),
  );
  }
  
 } */
