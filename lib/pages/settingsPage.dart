import 'package:flutter/material.dart';

class SettingPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(200, 41, 39, 39),
        appBar: AppBar(
          title: Text("Settings"),
          centerTitle: true,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          backgroundColor: Color.fromARGB(150, 55, 79, 128),
        ),
        body: Center(
          child: Text(
            "Hi There !",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
        ));
  }
}
