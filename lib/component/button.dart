import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.str});

  final String str;


  Future<http.Response> fetch_data() {
    return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(fetch_data());
      },
      child: Container(
        height: 50,
        width: 200,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.orange,
        ),
        child: Text(str,
            style: const TextStyle(fontSize: 25),
            textAlign: TextAlign.center
        ),
      ),
    );
  }
}