import 'package:atm_ingsoftware/views/login_view.dart';
import 'package:flutter/material.dart';

class Homeview extends StatelessWidget{
  const Homeview({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black45,

      body: Stack(
        children: [

          //degradado del fondo
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
          ),

          //contenedor azul
          Container(
                  padding: const EdgeInsets.only(top:30,bottom:120),
                  margin: const EdgeInsets.all(45),
                  height: MediaQuery.of(context).size.height/1.1,
                  color: const Color.fromRGBO(0, 28, 66, 1),
                  child: Stack(
                    children: [
                      ListView( //todo el contenido que está en pantalla
                      children: const <Widget>[
                        Image(image: AssetImage('assets/images/nyapo.png')),
                        Image(image: AssetImage('assets/images/aslitann.png')),
                        Image(image: AssetImage('assets/images/lunita.png')),
                      ],
                      ),
                      ElevatedButton(

                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(203, 108, 230, 1),
                          fixedSize: const Size(350, 50),
                        ),
                        child: const Text(
                          'Obtener más gatitos',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 187, 234, 1),
                            fontFamily: 'RetroGaming',
                            fontSize: 17,
                          ),
                        ),
                       onPressed: () {
                        },
                      ),
                    ]
                  )
          ),

        ]
      )
    );
  }

}