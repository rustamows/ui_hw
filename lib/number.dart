import 'package:flutter/material.dart';

class Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView.builder(
              itemCount: 55,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 12),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(18)),
                  child: Text('${index+1}'),
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
