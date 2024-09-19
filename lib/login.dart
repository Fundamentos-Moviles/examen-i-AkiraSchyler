import 'package:flutter/material.dart';
import 'package:examenuno_gpj/utils/constants.dart' as con;
import 'package:examenuno_gpj/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usuario = TextEditingController(); // Cambiando según el estado de la vista, recomendado
  TextEditingController pass = TextEditingController();
  String errorMessage = ''; // Mensaje de error

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
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: con.fondo2,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: con.fondo,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: con.fondo3,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: con.fondo4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: con.fondo2,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: con.fondo,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: con.fondo3,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: con.fondo4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: con.fondo2,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: con.fondo,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: con.fondo3,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: con.fondo4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              height: size.height * .5,
              width: size.width * .8,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: con.cuadro.withOpacity(0.3),
              ),
              child: Column(
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
                      hintText: 'Correo/Usuario',
                      filled: true,
                      fillColor: con.cuadro,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          width: 5,
                          color: con.letras,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: pass,
                    decoration: InputDecoration(
                      hintText: 'Contraseña',
                      filled: true,
                      fillColor: con.cuadro,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          width: 5,
                          color: con.letras,
                        ),
                      ),
                    ),
                    obscureText: true, // Ocultar la contraseña
                  ),
                  const SizedBox(height: 10),
                  if (errorMessage.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        errorMessage,
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      ),
                    ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: con.botones,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: Size(200, 40),
                    ),
                    onPressed: () {
                      validUser();
                    },
                    child: Text(
                      'Iniciar Sesion',
                      style: TextStyle(
                        color: con.cuadro,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Mi primer examen. ¿estará sencillo?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: con.cuadro,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void validUser() {
    setState(() {
      if (usuario.text.isEmpty || pass.text.isEmpty) {
        errorMessage = 'Datos incompletos';
      } else if (usuario.text != 'test' && pass.text != "FDM1") {
        errorMessage = 'Usuario Y Contraseñá Incorrecto';
      }else if(usuario.text != 'test'){
        errorMessage = 'Usuario Incorrecto';
      }else if(pass.text != "FDM1"){
        errorMessage = 'Contraseña Incorrecta';
      }else {
        errorMessage = '';
        print("Usuario válido");
        showSnackBar('Ingreso correctamente', 5);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      }
    });
  }

  void showSnackBar(String texto, int duracion) {
    final snackBar = SnackBar(
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