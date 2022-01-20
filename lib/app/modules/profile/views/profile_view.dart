import 'package:anonia_chat_apps/app/modules/chatroom/views/chatroom_view.dart';
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
          title: Text('Profil kamu'),
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
                  margin: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: NetworkImage(''),
                      )),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          'Username',
                          style: TextStyle(color: Colors.black87, fontSize: 22),
                        ),
                        Text(
                          'Status',
                          style: TextStyle(color: Colors.black87, fontSize: 18),
                        ),
                      ],
                    ))
              ],
            )),
            Container(
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.note_add_rounded),
                    title: Text(
                      'Update Status',
                      style: TextStyle(fontSize: 22),
                    ),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.note_add_rounded),
                    title: Text(
                      'Edit Profile',
                      style: TextStyle(fontSize: 22),
                    ),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.note_add_rounded),
                    title: Text(
                      'Change Theme',
                      style: TextStyle(fontSize: 22),
                    ),
                    trailing: Text('Light'),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
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
        ));
  }
}
