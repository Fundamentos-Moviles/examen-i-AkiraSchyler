import 'package:flutter/material.dart';
import 'package:examenuno_gpj/utils/constants.dart' as con;

class MoreInfo extends StatefulWidget {
  const MoreInfo({super.key});

  @override
  State<MoreInfo> createState() => _MoreInfoState();
}

class _MoreInfoState extends State<MoreInfo> {
  List<int> fila = []; // Lista para almacenar los cuadros
  int numero = 12; // Máximo de cuadros por fila

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                fila.add(fila.length); // Agrega un cuadro nuevo
              });
            },
            child: Text('Agregar cuadro'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: (fila.length / numero).ceil(), // Número de filas
              itemBuilder: (context, max) {
                int inicio = max * numero;
                int finalF = inicio + numero;
                finalF = finalF > fila.length ? fila.length : finalF;

                return Row(
                  children: List.generate(finalF - inicio, (index) {
                    // Calcula el índice del cuadro
                    int iNumero = inicio + index;
                    Color? color = Colors.orange[(iNumero % 10 + 1) * 100];

                    return Expanded(
                      flex: 1, // Cada cuadro ocupa un espacio igual
                      child: Container(
                        height: 100,
                        color: color,
                      ),
                    );
                  }),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}