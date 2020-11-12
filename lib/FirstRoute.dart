import 'package:flutter/material.dart';
import 'SecondRoute.dart';

class FirstRoute extends StatefulWidget {
  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Test")),
      body: Container(
        color: Colors.orange,
        child: Center(
          child: MaterialButton(
            color: Colors.red,
            child: Text("Goto 2nd screen"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SecondRoute(t1: "test1", t2: "text2")),
              );
            },
          ),
        ),
      ),
    );
  }
}
