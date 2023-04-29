import 'package:flutter/material.dart';
import 'package:atm_ingsoftware/views/home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [

          //contenedor que tiene el gradiente del fondo
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
               Color.fromRGBO(0, 74, 173, 1),
               Color.fromRGBO(203, 108, 230, 1),
              ],
            ),
            ),

            child: ListView(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(25.0),
                  height: MediaQuery.of(context).size.height/1.06,
                  color: const Color.fromRGBO(0, 28, 66, 1),


                )
              ],
            )
          ),


        
        ],
      ),
    );

  }
}