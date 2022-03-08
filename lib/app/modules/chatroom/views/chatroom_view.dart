import 'package:anonia_chat_apps/app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chatroom_controller.dart';

class ChatroomView extends GetView<ChatroomController> {
  final AuthConts = Get.find<AuthController>();
  // final String chat_id = (Get.arguments as Map<String, dynamic>)["chat_id"];
  final FocusNode _focusNode = FocusNode();
  final ChatroomController controller = Get.put(ChatroomController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChatroomView'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Flexible(
              child: Container(
                child: Obx(
                  () {
                    return Text(controller.onSend.toString());
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: TextField(
                onEditingComplete: () => controller.chatController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.send_rounded),
                    onPressed: controller.onSend,
                  ),
                  hintText: "chat someone here",
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
