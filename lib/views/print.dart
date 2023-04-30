import 'package:flutter/material.dart';

class PrintView extends StatelessWidget{
  const PrintView ({super.key});

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