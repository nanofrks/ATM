import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Homeview extends StatelessWidget{
  const Homeview({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: (){
              Navigator.pop(context);
              }, 
              child: Text('Volver')),

          ElevatedButton(
            onPressed: (){

            },
            child: Text('Set name'))
        ],
      )
    );
  }

}