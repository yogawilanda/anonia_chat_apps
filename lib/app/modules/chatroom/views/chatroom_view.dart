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
      appBar: PreferredSize(
        child: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(),
              SizedBox(
                width: 12,
              ),
              Text('Kaifa'),
            ],
          ),
          centerTitle: true,
        ),
        preferredSize: Size.fromHeight(100),
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
                  hintText: "search someone here",
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
