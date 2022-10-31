import 'package:mobx/mobx.dart';

part 'promodoro.store.g.dart';

class PromodoroStore = _PromodoroStore with _$PromodoroStore;

enum TipoIntervalo { TRABALHO, DESCANSO }

abstract class _PromodoroStore with Store {
  @observable
  bool iniciado = false;

  @observable
  int minutos = 2;

  @observable
  int segundos = 0;

  @observable
  int tempoTrabalho = 2;

  @observable
  int tempoDescanso = 1;

  @observable
  TipoIntervalo tipoIntervalo = TipoIntervalo.DESCANSO;

  @action
  void iniciar() {
    iniciado = true;
  }

  @action
  void parar() {
    iniciado = false;
  }

  @action
  void reiniciar() {
    iniciado = false;
  }

  @action
  void incrementarTempoTrabalho() {
    tempoTrabalho++;
  }

  @action
  void decrementarTempoTrabalho() {
    tempoTrabalho--;
  }

  @action
  void incrementarTempoDescanso() {
    tempoDescanso++;
  }

  @action
  void decrementarTempoDescanso() {
    tempoDescanso--;
  }

  bool isTrabalhando() {
    return tipoIntervalo == TipoIntervalo.TRABALHO;
  }

  bool isDescansando() {
    return tipoIntervalo == TipoIntervalo.DESCANSO;
  }
}
