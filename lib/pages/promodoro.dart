import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:promodoro/components/cronometro.dart';
import 'package:promodoro/components/entrada_tempo.dart';
import 'package:promodoro/store/promodoro.store.dart';
import 'package:provider/provider.dart';

class Promodoro extends StatelessWidget {
  const Promodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PromodoroStore>(context);

    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(child: Cronometro()),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Observer(
            builder: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(
                  valor: store.tempoTrabalho,
                  titulo: 'trabalho',
                  inc: store.incrementarTempoTrabalho,
                  dec: store.decrementarTempoTrabalho,
                ),
                EntradaTempo(
                  valor: store.tempoDescanso,
                  titulo: 'descanso',
                  inc: store.incrementarTempoDescanso,
                  dec: store.decrementarTempoDescanso,
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
