import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;

  const CronometroBotao({required this.texto, required this.icone, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            textStyle: TextStyle(fontSize: 20)),
        onPressed: () {},
        child: Row(
          children: [Icon(this.icone), Text(texto)],
        ));
  }
}
