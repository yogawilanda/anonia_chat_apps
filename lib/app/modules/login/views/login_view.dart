import 'package:anonia_chat_apps/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(6),
        child: Row(
          children: [
            Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    child: Image.network(
                        'https://cdni.iconscout.com/illustration/premium/thumb/people-using-social-media-application-2890207-2407184.png',
                        fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 300,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => HomeView());
                      },
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.g_mobiledata,
                            size: 36,
                          ),
                          Text(
                            'Login with google',
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14), // <-- Radius
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                color: Colors.black,
                child: Form(
                    child: Column(
                  children: [],
                ))),
          ],
        ),
      ),
    );
  }
}
