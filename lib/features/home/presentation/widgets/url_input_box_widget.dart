import 'package:flutter/material.dart';

class UrlInputBox extends StatelessWidget {
  final TextEditingController controller;

  const UrlInputBox({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(controller: controller);
  }
}
