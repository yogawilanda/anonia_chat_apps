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
      appBar: AppBar(
        title: Text('Users'),
        centerTitle: true,
        actions: [ElevatedButton(onPressed: () {}, child: Icon(Icons.menu))],
      ),
      body: Container(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                  itemBuilder: (context, index) => ChatBubble()),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: TextField(
                onEditingComplete: () => controller.onSend(),
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

class ChatBubble extends StatefulWidget {
  const ChatBubble({Key? key}) : super(key: key);

  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  final RxString chatBubblesMethod = ''.obs;
  ChatroomController controller = Get.put(ChatroomController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return chatBubblesResult();
  }

  Container chatBubblesResult() {
    return Container(
      child: Text(controller.chatController.text),
    );
  }
}
