import 'package:states_rebuilder/states_rebuilder.dart';

class StatesContainer extends StatesRebuilder {
  int counter = 0;

  void change(int amount) {
    this.counter += amount;
    rebuildStates();
  }
}
