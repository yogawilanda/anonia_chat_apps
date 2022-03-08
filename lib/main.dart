import 'package:anonia_chat_apps/app/controllers/auth_controller.dart';
import 'package:anonia_chat_apps/app/particles/loading_splash.dart';

import '/app/particles/error.dart';
import '/app/particles/loading.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  final authCont = Get.put(AuthController(), permanent: true);

  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Error();
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return FutureBuilder(
            future: Future.delayed(
              const Duration(seconds: 0),
            ),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Obx(
                  () => GetMaterialApp(
                    title: "Application",
                    debugShowCheckedModeBanner: false,
                    theme: appThemeData,
                    initialRoute: authCont.isSkipIntroduction.isTrue
                        ? authCont.isAuthented.isTrue
                            ? Routes.HOME
                            : Routes.LOGIN
                        //change this to Introduction after debugging.
                        : Routes.LOGIN,
                    getPages: AppPages.routes,
                  ),
                );
              }
              return const LoadingSplash();
            },
          );
        }

        return const Center(child: Loading());
      },
    );
  }
}

final ThemeData appThemeData = ThemeData(
  primaryColor: Colors.white,
  backgroundColor: Colors.white,
  fontFamily: 'Arial',
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
    bodyText1: TextStyle(fontSize: 14),
  ),
);
