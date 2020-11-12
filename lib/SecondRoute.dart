import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  final t1, t2;
  SecondRoute({Key key, @required this.t1, this.t2}) : super(key: key);

  @override
  _SecondRouteState createState() => _SecondRouteState(t1, t2);
}

class _SecondRouteState extends State<SecondRoute> {
  String t1, t2;
  _SecondRouteState(this.t1, this.t2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Test")),
      body: Container(
        color: Colors.yellow,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              child: Text(t1),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Text(t2)
          ],
        ),
      ),
    );
  }
}
