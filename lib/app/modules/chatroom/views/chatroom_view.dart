import 'package:anonia_chat_apps/app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chatroom_controller.dart';

class ChatroomView extends GetView<ChatroomController> {
  final AuthConts = Get.find<AuthController>();
  // final String chat_id = (Get.arguments as Map<String, dynamic>)["chat_id"];
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      
      AppBar(
        leading: IconButton(
            onPressed: () {
              Get.to(ChatroomView());
            },
            icon: const Icon(Icons.arrow_back)),
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        title: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: ListTile(
            isThreeLine: true,
            subtitle: Text('Online'),
            title: Text('Kaifa'),
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                    width: 3, style: BorderStyle.solid, color: Colors.green),
              ),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                      image: NetworkImage(
                        'https://www.allstars.id/blog/wp-content/uploads/2021/07/selebgram-cantik-shakilla-astari-819x1024.jpg',
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) => ListTile(),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.send_rounded),
                    onPressed: () {},
                  ),
                  hintText: "Type something",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    gapPadding: 12,
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
