import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/models/user_model.dart';
import 'package:flutter_chat/models/message_model.dart';

import '../models/message_model.dart';

class Chatscreen extends StatefulWidget {

  final User user;

  Chatscreen({required this.user});



  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {

  _buildmessage(Message message, bool isMe){
    final Container msg= Container(
      margin: isMe ? EdgeInsets.only(top: 8,left: 80,bottom: 8.0)
          : EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
        right: 70.0,
      ),
      padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
      // width: MediaQuery.of(context).size.width * 45,


      decoration: BoxDecoration(
        color: isMe ? Color(0xffffdab9): Color(0xffffefee),
        borderRadius: isMe ? BorderRadius.only(
            topRight: Radius.circular(15.0),
            bottomLeft: Radius.circular(15.0)
        ):BorderRadius.only(
            topRight: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0)
        )
        ,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(message.time,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),),
          SizedBox(
            height: 5.0,
          ),
          Text(message.text,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),),
        ],
      ),
    );
    if (isMe){
      return msg;
    }
    return Row(
      children: [
        msg,

        IconButton(
          color: message.isliked ?Colors.red : Colors.blueGrey,
          iconSize: 30.0,
          icon: message.isliked ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          onPressed: () {},
        )
      ],
    );
  }
  _buildmessagecomposure(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.photo),
            iconSize: 25.0,
            color: Colors.red,
            onPressed: (){

            },
          ),
          Expanded(child: TextField(
            textCapitalization: TextCapitalization.sentences,
            onChanged: (value){

            },
            decoration: InputDecoration.collapsed(
              hintText: 'Send a message....',
            ),
          )),
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Colors.red,
            onPressed: (){

            },
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.red,

      appBar: AppBar(
        title: Center(child: Text(widget.user.name,style: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w600,

        ),),),
        backgroundColor: Colors.red,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],

      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),


                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),

                  child: ListView.builder(
                    reverse: true,
                    padding: EdgeInsets.only(top: 15.0),
                    itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index){
                      final Message message =messages[index];
                      final bool isMe = message.sender.id == currentUser.id;

                    return _buildmessage(message, isMe);
                  },),
                ),
              ),
            ),

            _buildmessagecomposure(),
          ],
        ),
      ),

    );


  }
}

