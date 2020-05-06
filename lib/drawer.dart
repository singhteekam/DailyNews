import 'package:flutter/material.dart';

class Draw extends StatefulWidget {
  @override
  _DrawState createState() => _DrawState();
}

class _DrawState extends State<Draw> {

  List<String> opt= ["in","us"];
  String lan="in";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:<Widget>[
          GestureDetector(
            child:Container(
              child: ListTile(
                title:Text("India"),
                trailing: Text("in"),
              )
            ),
            onTap: () {
              setState(() {
                lan="in";
              });
            },
          ),

          GestureDetector(
            child:Container(
              child: ListTile(
                title:Text("US"),
                trailing: Text("us"),
              )
            ),
            onTap: () {
              setState(() {
                lan="us";
              });
            },
          )
        ]
      ),
    );
  }
}