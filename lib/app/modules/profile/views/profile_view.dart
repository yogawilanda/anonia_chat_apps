import 'package:anonia_chat_apps/app/modules/chatroom/views/chatroom_view.dart';
import 'package:expendable_fab/expendable_fab.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        title: const Text('Profil kamu'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(
                ChatroomView(),
              );
            },
            icon: const Icon(Icons.logout_rounded),
          ),
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
                        image: NetworkImage(''),
                      )),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: const [
                      Text(
                        'Username',
                        style: TextStyle(color: Colors.black87, fontSize: 22),
                      ),
                      Text(
                        'Status',
                        style: TextStyle(color: Colors.black87, fontSize: 18),
                      ),
                      Chip(
                        label: Text('#Techno'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Expanded(
            child: SizedBox(
              height: 24,
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(bottom: context.mediaQueryPadding.bottom + 10),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Anonia',
                  style: TextStyle(color: Colors.black87),
                ),
                Text(
                  'V.1.0.0',
                  style: TextStyle(color: Colors.black87),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: ExpendableFab(
        distance: 100,
        children: [
          ActionButton(
            onPressed: () {},
            icon: const Icon(Icons.edit_outlined),
          ),
          ActionButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
          ActionButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
        ],
      ),
    );
  }
}
