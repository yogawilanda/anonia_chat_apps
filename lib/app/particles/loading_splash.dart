import 'package:flutter/material.dart';

class LoadingSplash extends StatelessWidget {
  const LoadingSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: CircleAvatar(
            backgroundImage: AssetImage(
              'assets/loadingsplash/loadingcat.gif',
            ),
            radius: 100,
          ),
        ),
      ),
    );
  }
}
