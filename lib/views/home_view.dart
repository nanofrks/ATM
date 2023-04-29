import 'package:flutter/material.dart';

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

          ListView( //todo el contenido que está en pantalla
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 128, right: 128),
                  margin: const EdgeInsets.all(45),
                  height: MediaQuery.of(context).size.height/1.1,
                  color: const Color.fromRGBO(0, 28, 66, 1),
                )
              ],
          )
        ]
      )
    );
  }

}