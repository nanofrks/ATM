import 'package:atm_ingsoftware/views/register.dart';
import 'package:flutter/material.dart';
import 'package:atm_ingsoftware/views/home_view.dart';
import 'package:flutter/services.dart';

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

            child: ListView( //todo el contenido que está en pantalla
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 128, right: 128),
                  margin: const EdgeInsets.all(45),
                  height: MediaQuery.of(context).size.height/1.1,
                  color: const Color.fromRGBO(0, 28, 66, 1),

                  child: ListView( //contenido dentro del contenedor azul
                    children: <Widget>[
                      const SizedBox(height: 150),

                      //logo
                      const Center(
                        child: Image(image: AssetImage('assets/images/nanogatos.png'))
                      ),

                      //ingresar usuario
                      SizedBox(
                        width: 200,
                        height: 90,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Usuario',
                            hintStyle: TextStyle(
                              color: Colors.lightBlue[50],
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: const UnderlineInputBorder(),
                            prefixIcon: const Icon(Icons.person),
                            prefixIconColor: Colors.lightBlue[50],
                            
                          ),
                          maxLength: 10,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                          textAlign: TextAlign.left,
                          cursorColor: const Color.fromRGBO(203, 108, 230, 1),
                          style: TextStyle(
                            color: Colors.lightBlue[50]
                          ),
                        )),

                      //botón iniciar
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> const Homeview()));
                        }, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(120, 67, 230,1),
                          fixedSize: const Size(0, 50),
                        ),
                        child: const Text(
                          'INICIAR',
                          style: TextStyle(
                            fontFamily: 'RetroGaming',
                            fontSize: 17,
                          ),
                        ),
                      ),

                      //imagen gato
                      const Image(
                        image: AssetImage('assets/images/aslitan.png'),
                        alignment: Alignment.center,
                        height: 120,
                        ),
                      
                      //ir a registrarse
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> const Registerview()));
                        },
                        child: const Text(
                          'No tengo una cuenta',
                          style: TextStyle(
                            color: Color.fromRGBO(203, 108, 230, 1)
                          ),
                        ))

                    ]
                  )

                )
              ],
            )
          ),
        ],
      ),
    );

  }
}