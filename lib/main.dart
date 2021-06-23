import 'package:flutter/material.dart';
import 'package:flutter_p32929/logics/StatesManager.dart';
import 'package:flutter_p32929/routes/MainRoute.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

void main() {
  runApp(StartingPoint());
}

class StartingPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateBuilder(
      models: [StatesManager.states],
      builder: (statesBuilderContext, rm) {
        return MainRoute.getDefaultLayout();
      },
    );
  }
}
