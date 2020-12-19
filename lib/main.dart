import 'package:flutter/material.dart';
import 'package:flutter_p32929/logics/StatesManager.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

void main() {
  runApp(StartingPoint());
}

class StartingPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateBuilder(
      models: [StatesManager.counterModel],
      builder: (ctx, _) {
        return MaterialApp(
          title: "Demo App",
          home: Scaffold(
            appBar: AppBar(
              title: Text('Demo App'),
            ),
            body: Center(
              child: Column(
                children: [
                  Text("Counter : ${StatesManager.counterModel.counter}"),
                  RaisedButton(
                    onPressed: () {
                      StatesManager.counterModel.change(1);
                    },
                    child: Text("+1"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      StatesManager.counterModel.change(-1);
                    },
                    child: Text("-1"),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
