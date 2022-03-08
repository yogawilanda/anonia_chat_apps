import 'package:anonia_chat_apps/app/modules/chatroom/views/chatroom_view.dart';
import 'package:anonia_chat_apps/app/modules/profile/views/widgets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue,
          title: const Text('Profil kamu'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Get.to(ChatroomView());
              },
              icon: const Icon(Icons.arrow_back)),
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(ChatroomView());
                },
                icon: const Icon(Icons.logout_rounded)),
          ],
        ),
        body: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: 175,
                    height: 175,
                    margin: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                          image:
                              NetworkImage('https://picsum.photos/id/237/200'),
                        )),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          const Text(
                            'Username',
                            style: const TextStyle(
                                color: Colors.black87, fontSize: 22),
                          ),
                          const Text(
                            'Status',
                            style: const TextStyle(
                                color: Colors.black87, fontSize: 18),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            const EditOptions(),
            const Spacer(),
            const FooterProfile(),
          ],
        ));
  }
}
