import 'package:flutter/material.dart';

Widget StringTextField (String str1, String str2){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: str1,
        hintText: str2,
      ),
    ),
  );
}