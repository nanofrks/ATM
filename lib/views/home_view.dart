import 'package:atm_ingsoftware/views/get.dart';
import 'package:atm_ingsoftware/views/login_view.dart';
import 'package:atm_ingsoftware/views/send.dart';
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
            child: Column(
              children: [
                
                IconButton(
                  icon: const Icon(
                    Icons.exit_to_app,
                    color: Color.fromRGBO(18, 0, 59, 1),
                  ),
                  iconSize: 25,
                  style: const ButtonStyle(alignment: Alignment.topRight),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> const LoginView()));
                  },
                )
              ]
            )
          ),

          //contenedor azul
          Container(
                  // padding: const EdgeInsets.only(top:30,bottom:120),
                  margin: const EdgeInsets.all(45),
                  height: MediaQuery.of(context).size.height/1.1,
                  color: const Color.fromRGBO(0, 28, 66, 1),
                  child: Stack(
                    children: [
                      ListView( //todo el contenido que está en pantalla
                      children:  <Widget>[

                        const SizedBox(height: 90),

                        const Text(
                          'Mis gatos',
                          style: TextStyle(
                            fontFamily: 'RetroGaming',
                            color: Color.fromRGBO(255, 187, 234, 1),
                            fontSize: 70,
                          ),
                          textAlign: TextAlign.center,

                        ),
                        const SizedBox(height: 20),
                        const Image(image: AssetImage('assets/images/nyapo.png')),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(120, 67, 230,1),
                            ),
                          child: const Text(
                            'Imprimir tiquete',
                            style: TextStyle(
                            color: Color.fromRGBO(255, 187, 234, 1),
                            fontFamily: 'RetroGaming',
                            fontSize: 17,
                          ),
                          ),
                          onPressed:() {
                            showDialog(context: context,
                             builder: (BuildContext context){
                              return Dialog(
                                backgroundColor: const Color.fromRGBO(120, 67, 230,1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                                  child: SizedBox(
                                    height: 200,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'Imprimiendo...',
                                            style: TextStyle(
                                              color: Color.fromRGBO(255, 187, 234, 1),
                                              fontFamily: 'RetroGaming',
                                              fontSize: 17,
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          CircularProgressIndicator(
                                            valueColor:
                                            AlwaysStoppedAnimation( Colors.blue.shade300),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                              );
                              }
                            );
                          }
                          )
                        ),
                        
                        const SizedBox(height: 10),

                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(120, 67, 230,1),
                            ),
                          child: const Text(
                            'Transferir gatito',
                            style: TextStyle(
                            color: Color.fromRGBO(255, 187, 234, 1),
                            fontFamily: 'RetroGaming',
                            fontSize: 17,
                          ),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> const SendView()));
                          },
                        ),
                        ),
                        
                        const Image(image: AssetImage('assets/images/aslitann.png')),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(120, 67, 230,1),
                            ),
                          child: const Text(
                            'Imprimir tiquete',
                            style: TextStyle(
                            color: Color.fromRGBO(255, 187, 234, 1),
                            fontFamily: 'RetroGaming',
                            fontSize: 17,
                          ),
                          ),
                          onPressed: () {
                            showDialog(context: context,
                             builder: (BuildContext context){
                              return Dialog(
                                backgroundColor: const Color.fromRGBO(120, 67, 230,1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                                  child: SizedBox(
                                    height: 200,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'Imprimiendo...',
                                            style: TextStyle(
                                              color: Color.fromRGBO(255, 187, 234, 1),
                                              fontFamily: 'RetroGaming',
                                              fontSize: 17,
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          CircularProgressIndicator(
                                            valueColor:
                                            AlwaysStoppedAnimation( Colors.blue.shade300),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                
                              );
                              }
                            );
                          },
                        ),
                        ),

                        const SizedBox(height: 10),

                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(120, 67, 230,1),
                            ),
                          child: const Text(
                            'Transferir gatito',
                            style: TextStyle(
                            color: Color.fromRGBO(255, 187, 234, 1),
                            fontFamily: 'RetroGaming',
                            fontSize: 17,
                          ),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> const SendView()));
                          },
                        ),
                        ),
                        
                        const Image(image: AssetImage('assets/images/lunita.png')),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(120, 67, 230,1),
                            ),
                          child: const Text(
                            'Imprimir tiquete',
                            style: TextStyle(
                            color: Color.fromRGBO(255, 187, 234, 1),
                            fontFamily: 'RetroGaming',
                            fontSize: 17,
                          ),
                          ),
                          onPressed: () {
                            showDialog(context: context,
                             builder: (BuildContext context){
                              return Dialog(
                                backgroundColor: const Color.fromRGBO(120, 67, 230,1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                                  child: SizedBox(
                                    height: 200,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'Imprimiendo...',
                                            style: TextStyle(
                                              color: Color.fromRGBO(255, 187, 234, 1),
                                              fontFamily: 'RetroGaming',
                                              fontSize: 17,
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          CircularProgressIndicator(
                                            valueColor:
                                            AlwaysStoppedAnimation( Colors.blue.shade300),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                
                              );
                              }
                            );
                          },
                        ),
                        ),

                        const SizedBox(height: 10),

                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(120, 67, 230,1),
                            ),
                          child: const Text(
                            'Transferir gatito',
                            style: TextStyle(
                            color: Color.fromRGBO(255, 187, 234, 1),
                            fontFamily: 'RetroGaming',
                            fontSize: 17,
                          ),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> const SendView()));
                          },
                        ),
                        ),

                        const SizedBox(height: 50),
                        
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
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> const GetView()));
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