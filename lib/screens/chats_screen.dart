import 'package:chatappui/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:chatappui/models/message_model.dart';

class Chat extends StatefulWidget {
  final User user;
  const Chat({super.key, required this.user});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  _buildMessage(Message message, bool isMe) {
    return Container(
      // color: Color(0xFFFFEFEE),
      margin: isMe
          ? EdgeInsets.only(top: 8.0, bottom: 8.0, right: 80.0)
          : EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0),
      //  isMe
      //     ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
      //     : EdgeInsets.only(top: 8.0, bottom: 8.0, right: 80.0),
      color: Colors.grey,
      child: Text(message.text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          widget.user.name,
          style: const TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.more_horiz,
            ),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
                child: ListView.builder(
                    padding: EdgeInsets.only(top: 15.0),
                    itemCount: chats.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message message = chats[index];
                      final bool isMe =
                          chats[index].sender.id == currentUser.id;
                      return _buildMessage(message, isMe);
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
