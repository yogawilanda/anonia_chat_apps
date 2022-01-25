import 'package:anonia_chat_apps/app/modules/chatroom/views/chatroom_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  final List<Widget> friends = List.generate(
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
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          title: const Text('SearchView'),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back)),
          centerTitle: true,
          flexibleSpace: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  hintText: "search someone here",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    gapPadding: 12,
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ),
        preferredSize: const Size.fromHeight(150),
      ),
      body: friends.length == 0
          ? Center(
            child: Text('Kamu masih belum punya teman nih, cari yuk?'),
          )
          : ListView.builder(
              itemCount: friends.length,
              itemBuilder: (context, index) => friends[index],
            ),
    );
  }
}
