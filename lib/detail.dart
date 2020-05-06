import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class Details extends StatelessWidget {
    final String urlnews;
  Details(this.urlnews);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Full Article",
          style: new TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red[300],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: WebviewScaffold(
          url: urlnews,
        ),
      ),
    );
  }
}