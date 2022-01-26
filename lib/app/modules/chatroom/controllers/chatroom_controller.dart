import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatroomController extends GetxController {
  final textEditor = TextEditingController();
  final textNode = FocusNode();
  final scrollCtrl = ScrollController();
  final messages = <String>[].obs;

  @override
  void onInit() {
    textEditor;
    textNode;
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

  void onSend() {
    if (textEditor.text.isEmpty) return;
    messages.add(textEditor.text);
    textEditor.text = '';
    //to let user keep using text editor even after user send the message.
    textEditor.clear();
  }
}
