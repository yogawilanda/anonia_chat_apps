import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChatroomController extends GetxController {
  String chatValue = '';
  final TextEditingController chatController = TextEditingController();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  onSend() {
    chatController.text;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
