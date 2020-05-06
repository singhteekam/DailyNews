import 'package:DailyNews/detail.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';

class Feed extends StatelessWidget {


  final int value;
  Feed(this.value);


  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width*0.99;
    String title;
    if(value==1){
      title="Business";
    }
    else if(value==2){
      title="Bitcoin";
    }
    else if(value==3){
      title="TechCrunch";
    }
    else if(value==4){
      title="Apple";
    }
    else if(value==5){
      title="Wall Street";
    }
    else if(value==6){
      title="Top Headlines";
    }
    else if(value==7){
      title="BBC News";
    }
     else if(value==8){
      title="Entertainment";
    }
     else if(value==9){
      title="Health";
    }
     else if(value==10){
      title="Science";
    }
     else if(value==11){
      title="Sports";
    }
     else if(value==12){
      title="Technology";
    }
    return Scaffold(
      appBar: AppBar(
        title:Text("$title"),
        backgroundColor: Colors.red[300],
      ),
      body: new SafeArea(
          child: new Column(
        children: [
          new Expanded(
            flex: 1,
            child: new Container(
                width: width,
                color: Colors.grey,
                child: new GestureDetector(
                  child: new FutureBuilder<List<News>>(
                    future: fatchNews(
                        http.Client(), value), // a Future<String> or null
                    builder: (context, snapshot) {
                      if (snapshot.hasError) print(snapshot.error);

                      return snapshot.hasData
                          ? NewsList(news: snapshot.data)
                          : Center(child: CircularProgressIndicator());
                    },
                  ),
                )),
          ),
        ],
      )),
    );
  }
}


Future<List<News>> fatchNews(http.Client client, id) async {
  String url;
  if (id == 1) {
    url = Info.url +
        "top-headlines?country=in&category=business&apiKey=" +
        Info.key;
  } else if (id == 2) {
    url = Info.url +
        "everything?q=bitcoin&sortBy=publishedAt&apiKey=" +
        Info.key;
  } else if (id == 3) {
    url = Info.url +
        "top-headlines?sources=techcrunch&apiKey=" +
        Info.key;
  } else if (id == 4) {
    url = Info.url +
        "everything?q=apple&sortBy=popularity&apiKey=" +
        Info.key;
  } else if (id == 5) {
    url =
        Info.url + "everything?domains=wsj.com&apiKey=" +
         Info.key;
  }
   else if (id == 7) {
    url =
        Info.url + "top-headlines?sources=bbc-news&apikey=" +
         Info.key;
  }
  else if (id == 6) {
    url =
        Info.url + "top-headlines?country=in&apikey=" +
         Info.key;
  }
  else if (id == 8) {
    url =
        Info.url + "top-headlines?country=in&category=entertainment&apiKey=" +
         Info.key;
  }
  else if (id == 9) {
    url =
        Info.url + "top-headlines?country=in&category=health&apiKey=" +
         Info.key;
  }
  else if (id == 10) {
    url =
        Info.url + "top-headlines?country=in&category=science&apiKey=" +
         Info.key;
  }
  else if (id == 11) {
    url =
        Info.url + "top-headlines?country=in&category=sports&apiKey=" +
         Info.key;
  }
  else if (id == 12) {
    url =
        Info.url + "top-headlines?country=in&category=technology&apiKey=" +
         Info.key;
  }
  final response = await client.get(url);
  return compute(parsenews, response.body);
}

List<News> parsenews(String responsebody) {
  final parsed = json.decode(responsebody);
  return (parsed["articles"] as List)
      .map<News>((json) => new News.fromJson(json))
      .toList();
}

class News {
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  News({this.author, this.title, this.description, this.url,this.urlToImage,this.publishedAt,this.content});

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      author: json['author'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      urlToImage: json['urlToImage'] as String,
      publishedAt: json['publishedAt'] as String,
      content: json['content'] as String,

    );
  }
}

class NewsList extends StatelessWidget {
  final List<News> news;

  NewsList({Key key, this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: news.length,
      itemBuilder: (context, index) {
        return new Card(
          color: Colors.lightBlue[100],
          child: new ListTile(
            leading: CircleAvatar(
              child:Text((index+1).toString()),
              // backgroundColor: Colors.lightBlue,
            ),
            title: Column(
              children: <Widget>[
                Text(news[index].title),
                Text("Published at:  "+news[index].publishedAt,style: TextStyle(fontWeight:FontWeight.bold),),
              ],
            ),
            
            onTap: () {
              var url = news[index].url;
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (BuildContext context) => new Details(url),
                  ));
            },
          ),
        );
      },
    );
  }
}

class Info{
  static String url ="https://newsapi.org/v2/";
  static String key = "e50d94abe520476e97fbfd110570e0d4";

}

