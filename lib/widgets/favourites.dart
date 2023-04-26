import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/models/user_model.dart';
import 'package:flutter_chat/models/message_model.dart';
import 'package:flutter_chat/screen/chat_screen.dart';

class favouriteContacts extends StatelessWidget {
  const favouriteContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Favourite Contacts',
                  style: TextStyle(
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
                IconButton(
                  color: Colors.blueGrey,
                  iconSize: 30.0,
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Container(
              height: 120.0,
              child: ClipRRect( // magaca in sawirk hal mar scroll isla dhahayaan
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: ListView.builder(
                  itemCount: favourites.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(

                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Row(

                                children: [
                                  Column(
                                    children: [
                                      CircleAvatar(radius: 35.0,
                                      backgroundImage: AssetImage(favourites[index].ImageUrl),),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        favourites[index].name, style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.w600,
                                      ),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );

                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
