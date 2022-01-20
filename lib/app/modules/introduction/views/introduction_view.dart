import 'package:anonia_chat_apps/app/modules/login/views/login_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Interaksi dengan teman baru !",
            body:
                "Capek cari teman harus keluar rumah dulu? Tenang, kami bantu kamu kenalan tanpa harus ketemu fisik",
            image: Center(
              child: Image.network(
                  "https://image.freepik.com/free-vector/teamwork-partnership_27170-124.jpg",
                  height: 175.0),
            ),
          ),
          PageViewModel(
            title: "Beda bahasa bukan halangan",
            body:
                "Kami usahakan untuk melepaskan perbatasan antar bahasa dengan otomatis menterjemahkan kedalam 1 bahasa global, inggris",
            image: Center(
              child: Image.network(
                  "https://img.freepik.com/free-vector/hello-from-other-side-social-distancing_53876-97946.jpg?size=338&ext=jpg",
                  height: 175.0),
            ),
          ),
          PageViewModel(
            title: "Privasi kamu adalah kewajiban kami",
            body: "Kami tidak akan menjual data privasi kamu",
            image: Center(
              child: Image.network(
                  "https://image.freepik.com/free-vector/private-data-concept-illustration_114360-5003.jpg",
                  height: 175.0),
            ),
          ),
        ],
        onDone: () {
          Get.toNamed("/login");
        },
        onSkip: () {
          Get.to(const LoginView());
        },
        showSkipButton: true,
        next: const Text('next'),
        skip: const Text('skip'),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Colors.blue,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
      ),
    );
  }
}
