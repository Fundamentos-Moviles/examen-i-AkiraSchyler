import 'package:flutter/material.dart';
import 'package:examenuno_gpj/utils/constants.dart' as con;
import 'package:examenuno_gpj/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usuario = TextEditingController();//cambiando segun el estado de la vista, recomendado
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              height: size.height,
              width: size.width,
              color: con.fondo,
              child:
                  Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child: Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: con.fondo2,
                              ),
                            )),
                            Expanded(child: Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: con.fondo,
                              ),
                            )),
                            Expanded(child: Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: con.fondo3,
                              ),
                            )),
                            Expanded(child: Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: con.fondo4,
                              ),
                            )),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child: Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: con.fondo2,
                              ),
                            )),
                            Expanded(child: Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: con.fondo,
                              ),
                            )),
                            Expanded(child: Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: con.fondo3,
                              ),
                            )),
                            Expanded(child: Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: con.fondo4,
                              ),
                            )),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child: Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: con.fondo2,
                              ),
                            )),
                            Expanded(child: Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: con.fondo,
                              ),
                            )),
                            Expanded(child: Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: con.fondo3,
                              ),
                            )),
                            Expanded(child: Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: con.fondo4,
                              ),
                            )),
                          ],
                        ),
                      ),
                    ],
                  )
            ,
          )
          ),
          Center(
            child: Container(
              height: size.height * .4,
              width: size.width * .8,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: con.cuadro.withOpacity(0.3),
              ),
              child:
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    'Bienvenidos a su Examen',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: con.titulos,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: usuario,
                    decoration: InputDecoration(
                        hintText: 'Correo/Usuario', //texto de ayuda
                        filled: true,
                        fillColor: con.cuadro,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                              width: 5,
                              color: con.letras,
                            )
                        )
                    ),

                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: pass,
                    decoration: InputDecoration(
                        hintText: 'Contraseña', //texto de ayuda
                        filled: true,
                        fillColor: con.cuadro,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                              width: 5,
                              color: con.letras,
                            )
                        )
                    ),

                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: con.botones,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        fixedSize: Size(200, 40),
                      ),
                      onPressed:(){
                        validUser();
                      }, //funcion interna
                      child:
                          Text(
                            'Iniciar Sesion',
                            style: TextStyle(
                              color: con.cuadro,
                            ),
                          ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Mi primer examen. estara sencillo?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: con.cuadro,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  void validUser(){
    setState(() {
      if(usuario.text == 'usuario' && pass.text == "1") {
        print("usuario valido");
        showSnackBar('Ingreso correctamente', 5);
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => Home()));
        ///pop quita
        ///pushReplacment, push y pop
      }else{
        showSnackBar('Usuario Invalido', 5);
      }
    });
  }

  void showSnackBar(String texto, int duracion) {
    final  snackBar = SnackBar(
      content: Text(texto),
      duration: Duration(seconds: duracion),
      action: SnackBarAction(
        onPressed: () {
          // Cualquier acción al dar clic sobre el widget
        },
        label: 'Cerrar',
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

