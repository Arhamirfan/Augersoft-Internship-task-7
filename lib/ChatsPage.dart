import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  late OverlayEntry entry;

  List<String> messages = [""];
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Messages')),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: TextField(
                  decoration: new InputDecoration.collapsed(
                      hintText: 'Enter any message here..'),
                  onSubmitted: (value) {
                    setState(() {
                      messages.add(controller.text.toString());
                    });
                  },
                  controller: controller,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(messages[index]),
                  ),
                );
              },
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () {
          AlertDialog(
            title: Text('Enter message'),
            content: TextField(
              onSubmitted: (value) {
                setState(() {
                  messages.add(controller.text.toString());
                });
              },
              controller: controller,
            ),
            actions: [FlatButton(onPressed: () {}, child: Text('OK'))],
            elevation: 24,
          );
        },
      ),
    );
  }
}
