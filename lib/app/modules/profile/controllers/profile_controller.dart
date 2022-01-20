import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  late TextEditingController emailConts;
  late TextEditingController nameConts;
  late TextEditingController statusConts;

  @override
  void onInit() {
    emailConts = TextEditingController(text: "contoh@gmail.com");
    nameConts = TextEditingController(text: "Loremsia");
    statusConts = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailConts.dispose();
    nameConts.dispose();
    statusConts.dispose();
    super.onClose();
  }

  
}
