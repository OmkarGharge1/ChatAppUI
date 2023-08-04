import 'package:chatappui/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool? isLiked;
  final bool? unread;

  Message(
      {required this.sender,
      required this.time,
      required this.text,
      this.isLiked,
      this.unread});
}

final User currentUser = User(id: 0, name: 'Current User', imageUrl: '');

final User omkar =
    User(id: 1, name: 'Omkar', imageUrl: 'assets/images/omkar.jpg');

final User shruti =
    User(id: 2, name: 'Shruti', imageUrl: 'assets/images/shruti.jpg');

final User john = User(id: 3, name: 'John', imageUrl: 'assets/images/john.jpg');

final User shubham =
    User(id: 4, name: 'Shubham', imageUrl: 'assets/images/shruti.jpg');

final User paddy =
    User(id: 5, name: 'Paddy', imageUrl: 'assets/images/paddy.jpg');

final User viru = User(id: 6, name: 'Viru', imageUrl: 'assets/images/viru.jpg');

final User somu = User(id: 7, name: 'Somu', imageUrl: 'assets/images/somu.jpg');

List<User> favorites = [omkar, shruti, john, shubham, paddy, viru, somu];

List<Message> chats = [
  Message(
      sender: omkar,
      time: '5:30 PM',
      text: 'Hey ,How \'s it going im omkar',
      isLiked: false,
      unread: true),
  Message(
      sender: shruti,
      time: '5:30 PM',
      text: 'Hey ,How \'s it going',
      isLiked: false,
      unread: true),
  Message(
      sender: john,
      time: '5:30 PM',
      text: 'Hey ,How \'s it going',
      isLiked: false,
      unread: true),
  // Message(
  //     sender: john,
  //     time: '5:30 PM',
  //     text: 'Hey ,How \'s it going',
  //     isLiked: false,
  //     unread: true),
  // Message(
  //     sender: john,
  //     time: '5:30 PM',
  //     text: 'Hey ,How \'s it going',
  //     isLiked: false,
  //     unread: true),
  // Message(
  //     sender: john,
  //     time: '5:30 PM',
  //     text: 'Hey ,How \'s it going',
  //     isLiked: false,
  //     unread: true),
  // Message(
  //     sender: john,
  //     time: '5:30 PM',
  //     text: 'Hey ,How \'s it going',
  //     isLiked: false,
  //     unread: true),
  // Message(
  //     sender: omkar,
  //     time: '5:30 PM',
  //     text: 'Hey ,How \'s it going',
  //     isLiked: false,
  //     unread: true),
  // Message(
  //     sender: shruti,
  //     time: '5:30 PM',
  //     text: 'Hey ,How \'s it going',
  //     isLiked: false,
  //     unread: true),
  // Message(
  //     sender: john,
  //     time: '5:30 PM',
  //     text: 'Hey ,How \'s it going',
  //     isLiked: false,
  //     unread: true),
  // Message(
  //     sender: john,
  //     time: '5:30 PM',
  //     text: 'Hey ,How \'s it going',
  //     isLiked: false,
  //     unread: true),
  // Message(
  //     sender: john,
  //     time: '5:30 PM',
  //     text: 'Hey ,How \'s it going',
  //     isLiked: false,
  //     unread: true),
  // Message(
  //     sender: john,
  //     time: '5:30 PM',
  //     text: 'Hey ,How \'s it going',
  //     isLiked: false,
  //     unread: true),
  // Message(
  //     sender: john,
  //     time: '5:30 PM',
  //     text: 'Hey ,How \'s it going',
  //     isLiked: false,
  //     unread: true)
];
