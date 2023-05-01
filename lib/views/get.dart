import 'package:flutter/material.dart';

import 'package:atm_ingsoftware/views/home_view.dart';

class GetView extends StatelessWidget{
  const GetView ({super.key});

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
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 40, bottom: 40),
                  margin: const EdgeInsets.all(45),
                  height: MediaQuery.of(context).size.height/1.1,
                  color: const Color.fromRGBO(0, 28, 66, 1),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        child: Column(
                          children: <Widget>[
                            ElevatedButton(
                              onPressed:  () {
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> const Homeview()));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromRGBO(120, 67, 230,1),
                                  fixedSize: const Size(150, 50),
                                  ),
                              child: const Text(
                                'Volver',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 187, 234, 1),
                                  fontFamily: 'RetroGaming',
                                  fontSize: 24,
                                )
                              )
                              ),
                              
                          ],
                        ),
                      ),
                      const SizedBox(width: 50),
                      const SizedBox(height: 20),
                      const Image(
                        image: AssetImage('assets/images/gacha.png'),
                        fit: BoxFit.scaleDown,
                      ),
                      const SizedBox(width: 50),

                      SizedBox(
                        child: Column(
                          children: <Widget>[
                            const SizedBox(height: 100),
                            ElevatedButton(
                              onPressed:  () {
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
                                                  'Canjeando...',
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
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromRGBO(120, 67, 230,1),
                                  fixedSize: const Size(150, 100),
                                  ),
                              child: const Text(
                                'usar\nmonedas',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 187, 234, 1),
                                  fontFamily: 'RetroGaming',
                                  fontSize: 18,
                                )
                              )
                              ),

                              const SizedBox(height: 50),

                              ElevatedButton(
                              onPressed:  () {
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
                                                  'Canjeando...',
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
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromRGBO(120, 67, 230,1),
                                  fixedSize: const Size(150, 100),
                                  ),
                              child: const Text(
                                'leer\nQR',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 187, 234, 1),
                                  fontFamily: 'RetroGaming',
                                  fontSize: 18,
                                )
                              )
                              ),
                              
                          ],
                        ),
                      ),

                      
                      



                    ],
                  )
                )
              ],
          )
        ],
      )
    );
  }

}