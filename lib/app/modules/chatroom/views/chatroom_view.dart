import 'package:anonia_chat_apps/app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chatroom_controller.dart';

class ChatroomView extends GetView<ChatroomController> {
  ChatroomView({Key? key}) : super(key: key);

  final authConts = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   leading: IconButton(
      //       onPressed: () {
      //         Get.back();
      //       },
      //       icon: const Icon(Icons.arrow_back)),
      //   elevation: 2,
      //   backgroundColor: Colors.white,
      //   foregroundColor: Colors.blue,
      //   title: Padding(
      //     padding: const EdgeInsets.only(top: 12),
      //     child: ListTile(
      //       isThreeLine: true,
      //       subtitle: const Text('Online'),
      //       title: const Text('Guest'),
      //       leading: Container(
      //         width: 40,
      //         height: 40,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(30),
      //           border: Border.all(
      //               width: 3, style: BorderStyle.solid, color: Colors.green),
      //         ),
      //         child: Container(
      //           padding: const EdgeInsets.all(8),
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(50),
      //             image: const DecorationImage(
      //                 image: NetworkImage(
      //                   'https://www.allstars.id/blog/wp-content/uploads/2021/07/selebgram-cantik-shakilla-astari-819x1024.jpg',
      //                 ),
      //                 fit: BoxFit.cover),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),

      body: Column(
        children: [
          Flexible(
            child: Obx(
              () => ListView.builder(
                itemCount: controller.messages.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListView(
                    children: controller.messages
                        .map((element) => Text(element))
                        .toList(),
                  );
                },
              ),

              // ListView.builder(
              //   itemCount: controller.messages.length,
              //   controller: controller.scrollCtrl,
              //   itemBuilder: (context, index) => controller.messages[index],
              // ),
            ),
          ),
          Container(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Flexible(
                    child: TextField(
                      controller: controller.textEditor,
                      onSubmitted: (value) {
                        ChatBubbles(msg: 'test');
                      },
                      decoration: const InputDecoration.collapsed(
                          hintText: 'Send a message'),
                      focusNode: controller.textNode,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: IconButton(
                        icon: const Icon(Icons.send),
                        onPressed: () {
                          controller.onSend();
                          print(controller.onSend);
                        }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//chatbubbles goes here
class ChatBubbles extends StatelessWidget {
  ChatBubbles({
    Key? key,
    required this.msg,
  }) : super(key: key);

  final String msg;
  final controller = Get.put(ChatroomController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: Row(
        children: [
          //TODO: Redesign this layout
          //avatar profile goes here.
          Container(
            margin: const EdgeInsets.only(
              right: 16,
            ),
            child: const CircleAvatar(backgroundColor: Colors.blue, radius: 20),
          ),
          //Column for stacked Username and contents message.
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '({$msg})',
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'Your Chat Contents',
                  style: TextStyle(color: Colors.amber),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}




// class ChatBubbles extends StatelessWidget {
//   ChatBubbles({
//     Key? key,
//     required this.msg,
//   }) : super(key: key);

//   final String msg;
//   final controller = Get.put(ChatroomController());

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//       margin: const EdgeInsets.symmetric(
//         vertical: 10.0,
//       ),
//       child: Row(
//         children: [
//           //TODO: Redesign this layout
//           //avatar profile goes here.
//           Container(
//             margin: const EdgeInsets.only(
//               right: 16,
//             ),
//             child: const CircleAvatar(backgroundColor: Colors.blue, radius: 20),
//           ),
//           //Column for stacked Username and contents message.
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 '({$msg})',
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 10),
//                 child: Text('Your Chat Contents', style: TextStyle(
//                   color: Colors.amber
//                 ),),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
