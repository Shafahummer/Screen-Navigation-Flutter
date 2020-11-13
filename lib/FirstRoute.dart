import 'package:flutter/material.dart';
import 'SecondRoute.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirstRoute extends StatefulWidget {
  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  String name = "";

  getData() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    name = _prefs.getString("name");
    if (name != null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => SecondRoute(t1: name, t2: "text2")),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  btnPressed() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString("name", "shafah");
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => SecondRoute(t1: "test1111", t2: "text2222")),
    );
  }

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
              btnPressed();
            },
          ),
        ),
      ),
    );
  }
}
