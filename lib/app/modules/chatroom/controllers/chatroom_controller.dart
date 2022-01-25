import 'package:anonia_chat_apps/app/modules/chatroom/views/chatroom_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatroomController extends GetxController {
  late TextEditingController textEditor = TextEditingController();
  final textNode = FocusNode();
  final scrollCtrl = ScrollController();
  final messages = <String>[].obs;

  void onSend() {
    textEditor.clear();
    if (textEditor.text.isEmpty) return;
    if (textEditor.text.isNotEmpty) {
      return messages.add(textEditor.text);
    }
    textEditor.text = '';
    update();
  }

  @override
  void onInit() {
    textEditor.obs;
    textNode.obs;
    scrollCtrl;
    super.onInit();
  }

  @override
  void onClose() {
    textEditor.dispose();
    textNode.dispose();
    scrollCtrl;
    super.onClose();
  }
}
