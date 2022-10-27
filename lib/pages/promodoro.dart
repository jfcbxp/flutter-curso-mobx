import 'package:flutter/material.dart';
import 'package:promodoro/components/cronometro.dart';
import 'package:promodoro/components/entrada_tempo.dart';

class Promodoro extends StatelessWidget {
  const Promodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(child: Cronometro()),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              EntradaTempo(valor: 25, titulo: 'trabalho'),
              EntradaTempo(valor: 5, titulo: 'descanso')
            ],
          ),
        )
      ]),
    );
  }
}
