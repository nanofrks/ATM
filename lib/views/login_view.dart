import 'package:flutter/material.dart';
import 'package:atm_ingsoftware/views/home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Inicia sesion ',
              style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold)),
          ),

        SizedBox(height: 150),

          const Center(
            child: Text(
              'Usuario',
              style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold)),
          ),

          SizedBox(
            width: 200,
            height: 90,
            child: TextFormField(
              style: TextStyle(
                color: Colors.lightBlue[50]
              ),
            )),

          const Center(
            child: Text(
              'Contraseña',
              style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold)),
          ),
          
          SizedBox(
            width: 200,
            height: 90,
            child: TextFormField(
              style: TextStyle(
                color: Colors.lightBlue[50]
              )
            )),

          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=> const Homeview()));
              print('presionó :OOOOOO');
            }, 
            child: const Text('Iniciar sesión :DDDDDDD'))
        ],
      ),
    );
  }
}