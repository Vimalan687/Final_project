import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:project1/add_post.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class Home extends StatefulWidget {
  Home ({required this.channel,
  Key? key}) : super(key:key);
  final WebSocketChannel channel;

  State<StatefulWidget> createState() {
    return _Home(channel);
  }
}

class _Home extends State<Home> {
   _Home(this.channel);
  WebSocketChannel channel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: Text("HOME"),
          backgroundColor: Colors.lightBlue,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('data'),
                Text('data'),
               
              ],
            ));
          },
          itemCount: 50,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => Add_post(channel:channel),
                ));
          },
          child: Icon(Icons.create),
        ),
      ),
    );
  }
}


