import 'package:DailyNews/Feed.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DailyNews"),
        centerTitle: true,
        backgroundColor: Colors.red[300],
      ),
      body: ListView(children: <Widget>[
        Card(
          color: Colors.cyan[200],
          child: new GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: ListTile(
                title: Text(
                  "Top headlines",
                  textScaleFactor: 2,
                  // textAlign: TextAlign.center,
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.red,
                  size: 30,
                ),
              )),
            ),
            onTap: () {
              var value = 6;
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new Feed(value)));
            },
          ),
        ),
        Card(
          color: Colors.lightBlue,
          child: new GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: ListTile(
                title: Text(
                  "Business",
                  textScaleFactor: 2,
                  // textAlign: TextAlign.center,
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.red,
                  size: 30,
                ),
              )),
            ),
            onTap: () {
              var value = 1;
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new Feed(value)));
            },
          ),
        ),
        Card(
          color: Colors.indigo[200],
          child: new GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: ListTile(
                title: Text(
                  "Entertainment",
                  textScaleFactor: 2,
                  // textAlign: TextAlign.center,
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.red,
                  size: 30,
                ),
              )),
            ),
            onTap: () {
              var value = 8;
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new Feed(value)));
            },
          ),
        ),
        Card(
          color: Colors.purple[300],
          child: new GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: ListTile(
                title: Text(
                  "Health",
                  textScaleFactor: 2,
                  // textAlign: TextAlign.center,
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.red,
                  size: 30,
                ),
              )),
            ),
            onTap: () {
              var value = 9;
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new Feed(value)));
            },
          ),
        ),
        Card(
          color: Colors.orange,
          child: new GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: ListTile(
                title: Text(
                  "Science",
                  textScaleFactor: 2,
                  // textAlign: TextAlign.center,
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.red,
                  size: 30,
                ),
              )),
            ),
            onTap: () {
              var value = 10;
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new Feed(value)));
            },
          ),
        ),
        Card(
          color: Colors.pink[200],
          child: new GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: ListTile(
                title: Text(
                  "Sports",
                  textScaleFactor: 2,
                  // textAlign: TextAlign.center,
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.red,
                  size: 30,
                ),
              )),
            ),
            onTap: () {
              var value = 11;
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new Feed(value)));
            },
          ),
        ),
        Card(
          color: Colors.lime,
          child: new GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: ListTile(
                title: Text(
                  "Technology",
                  textScaleFactor: 2,
                  // textAlign: TextAlign.center,
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.red,
                  size: 30,
                ),
              )),
            ),
            onTap: () {
              var value = 12;
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new Feed(value)));
            },
          ),
        ),

        Card(
          color: Colors.lightGreen,
          child: new GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: ListTile(
                title: Text(
                  "Bitcoin",
                  textScaleFactor: 2,
                  // textAlign: TextAlign.center,
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.red,
                  size: 30,
                ),
              )),
            ),
            onTap: () {
              var value = 2;
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new Feed(value)));
            },
          ),
        ),
        Card(
          color: Colors.lightGreenAccent,
          child: new GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: ListTile(
                title: Text(
                  "TechCrunch",
                  textScaleFactor: 2,
                  // textAlign: TextAlign.center,
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.red,
                  size: 30,
                ),
              )),
            ),
            onTap: () {
              var value = 3;
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new Feed(value)));
            },
          ),
        ),
        Card(
          color: Colors.grey,
          child: new GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: ListTile(
                title: Text(
                  "Apple",
                  textScaleFactor: 2,
                  // textAlign: TextAlign.center,
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.red,
                  size: 30,
                ),
              )),
            ),
            onTap: () {
              var value = 4;
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new Feed(value)));
            },
          ),
        ),
        Card(
          color: Colors.indigo[200],
          child: new GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: ListTile(
                title: Text(
                  "Wall Street Journal",
                  textScaleFactor: 2,
                  // textAlign: TextAlign.center,
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.red,
                  size: 30,
                ),
              )),
            ),
            onTap: () {
              var value = 5;
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new Feed(value)));
            },
          ),
        ),
        Card(
          color: Colors.teal[200],
          child: new GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: ListTile(
                title: Text(
                  "From BBC News",
                  textScaleFactor: 2,
                  // textAlign: TextAlign.center,
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.red,
                  size: 30,
                ),
              )),
            ),
            onTap: () {
              var value = 7;
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new Feed(value)));
            },
          ),
        ),
      ]),
    );
  }
}
