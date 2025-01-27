import 'package:flutter/material.dart';

class Direck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('Back.png'),
              Text('jacob_w'),
              Image.asset('List.png'),
              Image.asset('pluse.png'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
              height: 36,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(18),
              ),
              child: TextField()),
        ),
      ],
    ));
  }
}
