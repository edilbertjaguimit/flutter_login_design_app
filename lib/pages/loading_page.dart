// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class HomeLoading extends StatefulWidget {
  @override
  State<HomeLoading> createState() => _HomeLoadingState();
}

class _HomeLoadingState extends State<HomeLoading> {
  void loadingInterval() async {
    await Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onBoarding');
    });
  }

  @override
  void initState() {
    super.initState();
    loadingInterval();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset('assets/app-logo 1.png'),
            Container(
              height: 100,
              child: Image(
                image: AssetImage(
                  'assets/app-logo 1.png',
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              child: Text(
                'RUN.',
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // CircleAvatar(
            //   backgroundImage: AssetImage('assets/app-logo 1.png',),
            //   radius: 50,

            // )
            // Container(
            //   child: Image(
            //     image: AssetImage('assets/app-logo 1.png'),
            //   ),
            // ),
            // Row()
          ],
        ),
      ),
    );
  }
}
