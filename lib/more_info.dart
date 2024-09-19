import 'package:flutter/material.dart';

class MoreInfo extends StatefulWidget {
  const MoreInfo({super.key});

  @override
  State<MoreInfo> createState() => _MoreInfoState();
}

class _MoreInfoState extends State<MoreInfo> {
  @override
  Widget build(BuildContext context) {
    int numero = 0;
    return Scaffold(
      body: Stack(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                numero == 12 ? numero = 0 : numero++;
              });
            },
            child: Text('Agregar cuadro'),
          ),

        ],
      ),
    );
  }
}
