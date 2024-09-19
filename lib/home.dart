import 'package:flutter/material.dart';
import 'package:examenuno_gpj/utils/constants.dart' as con;
import 'package:examenuno_gpj/more_info.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List lista;
  @override
  void initState() {
    // TODO: implement initState
    lista = List.from(con.lista);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(1),
            child:
            SingleChildScrollView(
              child: Container(
                color: con.fondo,
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(top:5.0, bottom: 5.0, left: 50, right: 50),
                        margin: EdgeInsets.only( top: 10.0),
                        decoration: BoxDecoration(      ///                                juntos, marcará un error por
                          borderRadius: BorderRadius.circular(10),    ///                  incompatibilidad de atributos
                          color: con.cuadro, /// ------------------------------------>
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Notificaciones de actividades',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: con.titulos,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Josemaria Guerrero Perea',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: con.titulos,
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )

                    ),
                    Container(
                      height: size.height,
                      width: size.width,
                      padding: EdgeInsets.all(20.0),
                      child: ListView.builder(
                          padding: const EdgeInsets.all(8),
                          itemCount: lista.length,
                          itemBuilder: (BuildContext, int index){
                            var datos = lista[index].toString().split('#');
                            var datos2 = con.lista[index].toString().split('#');

                            return datos[5] == '2' ?
                            buildCard(datos[1], datos[2], datos[3], int.parse(datos[0]))
                                :
                            buildCard2(datos[1], datos[2], datos[3], int.parse(datos2[0]));


                            //buildCard();
                          }
                      ),
                    ),
                  ],
                ),
              )

            ),
          )
        ],
      ),
    );
  }

  ElevatedButton buildCard2(String numero, String texto1, String texto2, int id) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: con.cuadro,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed:(){
          setState(() {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => MoreInfo()));//detectar y actualizar el estado de la VISTA
          });
          }, //funcion interna
        child:
        Row(
          //mainAxisSize: MainAxisSize.max,
          //mainAxisAlignment: MainAxisAlignment.center, //ALINEADOR
          children: [
            Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex:10,
                            child: Text(
                              numero,
                              style: TextStyle(
                                color: con.fondo,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Icon(Icons.energy_savings_leaf),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft, // Alinea el texto a la derecha
                        child: Text(
                          texto1,
                          style: TextStyle(
                            color: con.letras,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          texto2,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: con.letras,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(Icons.star, size: 15.0, color: con.estrella,),
                      ),
                    ],
                  ),
                )
            ),
          ],
        )
    );
  }

  Container buildCard(String numero, String texto1, String texto2, int id) {
    return Container(
      child: Row(
        children: [
          Expanded(
              flex: 8,
              child: Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.only(bottom: 10.0, top: 10.0,),
                decoration: BoxDecoration(      ///                                juntos, marcará un error por
                  borderRadius: BorderRadius.circular(10),    ///                  incompatibilidad de atributos
                  color: con.cuadro, /// ------------------------------------>
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex:10,
                          child: Text(
                            numero,
                            style: TextStyle(
                              color: con.fondo,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Icon(Icons.energy_savings_leaf),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft, // Alinea el texto a la derecha
                      child: Text(
                        texto1,
                        style: TextStyle(
                          color: con.letras,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        texto2,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: con.letras,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(Icons.star, size: 15.0, color: con.estrella,),
                    ),
                  ],
                ),
              )
          ),
          Expanded(
              flex: 4,
              child:
              Container(
                margin: EdgeInsets.only(bottom: 10.0, left: 10.0, top: 10.0),
                decoration: BoxDecoration(      ///                                juntos, marcará un error por
                  borderRadius: BorderRadius.circular(10),    ///                  incompatibilidad de atributos
                  color: con.cuadro, /// ------------------------------------>
                ),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Centra los botones verticalmente
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 15.0, top: 20.0,left: 2, right: 2),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: con.boton,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed:(){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MoreInfo()));//detectar y actualizar el estado de la VISTA
                            });
                            }, //funcion interna
                          child:
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center, //ALINEADOR
                            children: [
                              Icon(Icons.edit, color: con.cuadro,),
                              Text('Ver mas', style: TextStyle(color: con.cuadro),),
                            ],
                          )
                      ),
                    ), ///BOTONES CORREGIR
                    Container(
                      margin: EdgeInsets.only(bottom: 15.0, left: 2, right: 2),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: con.boton,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed:(){
                            setState(() { //detectar y actualizar el estado de la VISTA
                              if (id == 10 || id == 15 || id == 20 || id == 23) {
                                showSnackBar('No se eliminó el elemento con el id: $id', 5);
                              } else {
                                lista.removeAt(id-1);
                                showSnackBar('Se eliminó el elemento con el id: $id', 5);
                              }
                            });
                            }, //funcion interna
                          child:
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center, //ALINEADOR
                            children: [
                              Icon(Icons.delete, color: con.cuadro,),
                              Text('Borrar', style: TextStyle(color: con.cuadro),),
                            ],
                          )
                      ),
                    ),
                  ],
                ),
              )
          ),
        ],
      ),
    );
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

    // Muestra el SnackBar usando ScaffoldMessenger
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  void validNumber(int id){
    setState(() { //detectar y actualizar el estado de la VISTA
      if (id == 10 || id == 15 || id == 20 || id == 23) {
        showSnackBar('No se eliminó el elemento con el id: $id', 5);
      } else {
        lista.removeAt(id-1); // Elimina el elemento de la lista
        showSnackBar('Se eliminó el elemento con el id: $id', 5);
      }
    });
  }
}


