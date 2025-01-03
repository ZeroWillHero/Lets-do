import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:letsdo/routes.dart';

void main() => runApp(const LetsDo());

class LetsDo extends StatefulWidget {
  const LetsDo({super.key});

  @override
  State<LetsDo> createState() => _LetsDoState();
}

class _LetsDoState extends State<LetsDo> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "LetsDo",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: routes,
    );
  }
}



 