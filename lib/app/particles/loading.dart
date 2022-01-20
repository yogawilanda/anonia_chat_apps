import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: const [
              Text('Wait A Moment'),
              SizedBox(
                height: 30,
              ),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
