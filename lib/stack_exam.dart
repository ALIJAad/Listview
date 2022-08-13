import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyStack extends StatefulWidget {
  MyStack({Key? key}) : super(key: key);

  @override
  State<MyStack> createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  List<String> chatroom = [];

  addchat() {
    setState(() {
      chatroom.add(chatroomText.text);
      chatroomText.clear();
    });
    print(chatroom);
  }

  removeChat() {
    setState(() {
      chatroom.remove(chatroom.last);
    });
  }

  TextEditingController chatroomText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: chatroomText,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                addchat();
              },
              child: Text("add"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                removeChat();
              },
              child: Text("add"),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: chatroom.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: ListTile(
                    tileColor: Colors.yellow,
                    title: Text(
                      chatroom[index],
                    ),
                    trailing: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.delete),
                      label: const Text("sa"),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
