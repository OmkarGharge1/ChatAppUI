import 'package:chatappui/models/message_model.dart';
import 'package:chatappui/screens/chats_screen.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 300.0,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (BuildContext context, int index) {
                final Message chat = chats[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => Chat(user: chat.sender))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(),
                    child: Container(
                        height: 80,
                        margin: EdgeInsets.all(5),
                        // padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: chat.unread ?? false
                                ? const Color(0xFFFFEFEE)
                                : Colors.white,
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(20.0),
                                topRight: Radius.circular(20.0))),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage(
                                chat.sender?.imageUrl.toString() ?? ''),
                          ),
                          title: Text(
                            chat.sender?.name ?? '',
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            chat.text.toString(),
                            style: const TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(chat.time.toString()),
                                const SizedBox(
                                  height: 11,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(
                                          202, 241, 33, 18)),
                                  child: const Center(
                                    child: Text(
                                      'New',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
