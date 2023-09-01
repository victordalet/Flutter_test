import 'package:flutter/material.dart';
import 'component/button.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              MyButton(str: "Call API test 2"),
              MyButton(str: "Call API",)
            ],
          )
        ),

      ),
    ),
  );
}