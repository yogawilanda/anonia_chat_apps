import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChatroomController extends GetxController {
  final RxList _messages = [].obs;
  final chatController = TextEditingController();

  @override
  void onSend() {
    super.onInit();
    chatController.text;
    _messages.toString();
    print(chatController.text);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
