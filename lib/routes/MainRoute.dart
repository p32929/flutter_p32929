import 'package:flutter/material.dart';
import 'package:flutter_p32929/logics/StatesManager.dart';

class MainRoute {
  static getDefaultLayout() {
    return MaterialApp(
      title: "Demo App",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo App'),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Counter : ${StatesManager.states.counter}"),
              RaisedButton(
                onPressed: () {
                  StatesManager.states.change(1);
                },
                child: Text("+1"),
              ),
              RaisedButton(
                onPressed: () {
                  StatesManager.states.change(-1);
                },
                child: Text("-1"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
