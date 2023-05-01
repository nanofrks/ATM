import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Registerview extends StatelessWidget {
  const Registerview({super.key});

  @override
  Widget build(BuildContext context) {
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

            ListView(
              //todo el contenido que está en pantalla
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.only(left: 128, right: 128),
                    margin: const EdgeInsets.all(45),
                    height: MediaQuery.of(context).size.height / 1.1,
                    color: const Color.fromRGBO(0, 28, 66, 1),
                    child: ListView(
                      children: <Widget>[
                        const Center(
                            child: Image(
                                image:
                                    AssetImage('assets/images/nanogatos.png'))),

                        const Text('Ingresa un usuario',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),

                        SizedBox(
                            width: 200,
                            height: 90,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Usuario',
                                hintStyle: TextStyle(
                                  color: Colors.lightBlue[50],
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                border: const UnderlineInputBorder(),
                                prefixIcon: const Icon(Icons.person),
                                prefixIconColor: Colors.lightBlue[50],
                              ),
                              maxLength: 15,
                              textAlign: TextAlign.left,
                              cursorColor:
                                  const Color.fromRGBO(203, 108, 230, 1),
                              style: TextStyle(color: Colors.lightBlue[50]),
                            )
                            ),

                        const Text('Ingresa tu documento',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        SizedBox(
                            width: 200,
                            height: 90,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Documento de identidad',
                                hintStyle: TextStyle(
                                  color: Colors.lightBlue[50],
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                border: const UnderlineInputBorder(),
                                prefixIcon: const Icon(Icons.picture_in_picture_rounded),
                                prefixIconColor: Colors.lightBlue[50],
                              ),
                              maxLength: 10,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              textAlign: TextAlign.left,
                              cursorColor:
                                  const Color.fromRGBO(203, 108, 230, 1),
                              style: TextStyle(color: Colors.lightBlue[50]),
                            )),

                        const Text('Ingresa una contraseña',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),

                        SizedBox(
                            width: 200,
                            height: 90,
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Contraseña',
                                hintStyle: TextStyle(
                                  color: Colors.lightBlue[50],
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                border: const UnderlineInputBorder(),
                                prefixIcon: const Icon(Icons.lock),
                                prefixIconColor: Colors.lightBlue[50],
                              ),
                              maxLength: 10,
                              textAlign: TextAlign.left,
                              cursorColor:
                                  const Color.fromRGBO(203, 108, 230, 1),
                              style: TextStyle(color: Colors.lightBlue[50]),
                            )),

                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(120, 67, 230,1),
                          fixedSize: const Size(0, 50),
                          ),
                          child: const Text(
                            'REGISTRARSE',
                            style: TextStyle(
                              fontFamily: 'RetroGaming',
                              fontSize: 17,
                            ),
                          ),
                        ),

                        const SizedBox(height: 80),
                      ],
                    )),
              ],
            )
          ],
        ));
  }
}
