import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

String dropdownValue = "Aslitan";


class SendView extends StatefulWidget{
  const SendView ({super.key});

  @override
  State<SendView> createState() => _SendViewState();
}

class _SendViewState extends State<SendView> {
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

                        const SizedBox(height: 90),

                        const Text('Ingresa un usuario a enviar',
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

                        const Text('Selecciona la mascota a enviar',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),

                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 28, 66, 1), //<-- SEE HERE
                          ),
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>['Aslitan', 'Lunita', 'Nyapo'].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 187, 234, 1),
                                    fontFamily: 'RetroGaming',
                                    fontSize: 17,
                                  ),
                                ),
                              );
                            }).toList(),
                            dropdownColor: Color.fromRGBO(0, 28, 66, 1),
                          ),
                      ),

                        const SizedBox(height:40),

                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(120, 67, 230,1),
                          fixedSize: const Size(0, 50),
                          ),
                          child: const Text(
                            'Enviar',
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
        )
    );
  }

}