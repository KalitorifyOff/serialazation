import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:serilazation/model/example1/blog_feed.dart';
import 'package:serilazation/model/example2/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String json = '''{
    "status": "success",
    "total": 2,
    "data": [
      {
        "feed_id": "b1",
        "title": "Flutter Tips",
        "published_at": "2024-10-12T10:00:00Z",
        "author": {
          "id": "a1",
          "name": "Renga",
          "profilePic": "https://example.com/renga.png"
        },
        "feed": {
          "postId": "p1",
          "title": "Understanding Widgets",
          "content": "Flutter is all about widgets.",
          "tags": ["flutter", "widgets", "dart"],
          "author": {
            "id": "a1",
            "name": "Renga",
            "profilePic": "https://example.com/renga.png"
          },
          "comment": {
            "userId": "u1",
            "comment": "This is helpful!",
            "timeStamp": "2024-10-12T10:15:00Z"
          },
          "isFeatured": true,
          "likes": 150
        },
        "is_active": true
      },
      {
        "feed_id": "b2",
        "title": "Dart Deep Dive",
        "published_at": null,
        "author": null,
        "feed": null,
        "is_active": false
      }
    ]
  }''';
  late BlogFeed blogFeed;

  String user = '''
  {
  "user_id": "u123",
  "name": "Renga",
  "joined_at": "2024-10-12T10:00:00Z",
  "optionalBio": "Flutter Dev",
  "isActive": true,
  "address": {
    "street": "123 Main St",
    "city": "Chennai"
  },
  "role": "admin"
}
''';
  late User userModel;

  @override
  void initState() {
    blogFeed = BlogFeed.fromJson(jsonDecode(json));
    print(jsonEncode(blogFeed.toJson()));

    userModel = User.fromJson(jsonDecode(user));
    print(userModel.role.name);
    print(jsonEncode(userModel.toJson()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text(null ?? "no title")],
        ),
      ),
    );
  }
}
