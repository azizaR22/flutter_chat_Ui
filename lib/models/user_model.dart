import 'package:flutter_chat/models/message_model.dart';

class Message {

  final User sender;
  final String
  time;

  final String text;
  final bool isliked;
  final bool unread;
  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isliked,
    required this.unread,

});

}
// you current User
final User currentUser =User(
    id: 0, name: 'CurrentUser', ImageUrl: 'assets/images/greg.jpg'
);

final User james= User(
  id: 1,
  name: 'greg',
  ImageUrl: 'assets/images/greg.jpg'
);

final User greg= User(
    id: 2,
    name: 'james',
    ImageUrl: 'assets/images/james.jpg'
);

final User john= User(
    id: 3, name: 'john', ImageUrl:'assets/images/john.jpg');


final User olivia= User(
    id: 4,
    name: 'olivia',
    ImageUrl: 'assets/images/olivia.jpg'
);

final User sam = User(id: 5,
    name: 'sam',
    ImageUrl: 'assets/images/sam.jpg'
);
final User sophia = User(id: 6,
    name: 'sophia',
    ImageUrl: 'assets/images/sophia.jpg'
);

final User steven = User(id: 7,
    name: 'steven',
    ImageUrl: 'assets/images/steven.jpg'
);

List <User> favourites = [sam,steven,olivia,john,greg];

List <Message> chats =[
  Message(sender: james, time: '5:30 Pm',text: 'hey how is it going today are you alright', isliked: true, unread: false),
  Message(sender: greg, time: '4:20 Pm',text: 'How is life going buddy what the hell are you doing ', isliked: true, unread: true),
  Message(sender: olivia, time: '7:30 Pm',text: 'hey how is it going today fghjgtthtgh ', isliked: false, unread: true),
  Message(sender: john, time: '9:30 Pm',text: 'hey how is it going todaytrhtr ', isliked: false, unread: false),
  Message(sender: sophia, time: '5:30 Pm',text: 'hey how is it going todaytyhyhj ', isliked: false, unread: false),
  Message(sender: steven, time: '5:30 Pm',text: 'hey how is it going todaytrhyrjtyj ', isliked: false, unread: true),

];

// examples Messages in Chat Screen


List <Message> messages=[
  Message(sender: james, time: '5:30', text: 'what did you do today', isliked: true, unread: true),
  Message(sender: currentUser, time: '4:30', text: 'just walked my dog', isliked: false, unread: true),
  Message(sender: james, time: '5:30', text: 'did you eat food', isliked: true, unread: true),
  Message(sender: currentUser, time: '4:30', text: 'yeah i just ate it ', isliked: false, unread: true),
  Message(sender: currentUser, time: '4:30', text: 'yeah i just ate it ', isliked: false, unread: true),
];





