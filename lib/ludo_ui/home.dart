import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ludo/ludo_ui/reusable/background-widget.dart';

import 'home_main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                const HomeMain()
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return const BackgroundImageWidget();
  }
}
