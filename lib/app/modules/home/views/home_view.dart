import 'package:anonia_chat_apps/app/modules/chatroom/views/chatroom_view.dart';
import 'package:anonia_chat_apps/app/modules/profile/views/profile_view.dart';
import 'package:anonia_chat_apps/app/modules/search/views/search_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final List<Widget> personChat = List.generate(
    20,
    (index) => ListTile(
      leading: const CircleAvatar(
        radius: 30,
      ),
      title: Text('Orang ke ${index + 1}'),
      subtitle: Text('Chat orang ke ${index + 1}'),
      trailing: const Chip(
        label: Text(
          '3',
          style: TextStyle(fontSize: 14),
        ),
      ),
      onTap: () {
        Get.to(ChatroomView());
      },
    ),
  ).reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blue),
        backgroundColor: Colors.white,
        elevation: 1.5,
        title: const Text(
          'Anonia',
          style: TextStyle(
              fontSize: 24,
              color: Colors.blue,
              fontWeight: FontWeight.w800,
              letterSpacing: 8),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // const SizedBox(
          //   height: 6,
          // ),
          Expanded(
            child: ListView.builder(
              itemCount: personChat.length,
              itemBuilder: (context, index) => personChat[index],
            ),
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(12.0),
        child: FloatingActionButton(
          onPressed: () {
            Get.to(SearchView());
          },
          child: const Icon(Icons.search),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: const [
                  Text('Drawer Header'),
                  SizedBox(
                    height: 12,
                  ),
                  CircleAvatar(
                    radius: 42,
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                Get.to(ProfileView());
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                Get.snackbar('Sorry', 'We\'re still working on it', margin: EdgeInsets.only(top: 12));
              },
            ),
            ListTile(
              title: const Text('About Us'),
              onTap: () {
                
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
    );
  }
}
