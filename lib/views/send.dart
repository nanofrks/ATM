import 'package:flutter/material.dart';

class SendView extends StatelessWidget{
  const SendView ({super.key});

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
              child: const Text('Volver')),

          ElevatedButton(
            onPressed: (){

            },
            child: const Text('Set name'))
        ],
      )
    );
  }

}