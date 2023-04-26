import 'package:flutter/material.dart';
import 'package:flutter_chat/widgets/category_selector.dart';
import 'package:flutter_chat/widgets/favourites.dart';
import 'package:flutter_chat/widgets/recent_chats.dart';


import '../models/user_model.dart';


class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
          title: Center(
              child: Text(
            'Chats',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),),
          backgroundColor: Colors.red,
          elevation: 0.0,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            CategoySelector(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),),

                ),

                child: Column(
                  children: [
                    favouriteContacts(),
                    Recentchats(),

                  ],
                ),

              ),
            ),


          ],
        ),
      ),
    );
  }
}
