import 'package:flutter/material.dart';

class MPostPage extends StatefulWidget {
  String phone;

  MPostPage({required this.phone});
  @override
  State<StatefulWidget> createState() {
 return _MPost();    
  }
}

class _MPost extends State<MPostPage> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(body: Center(child: Column(
   children: [
     Text(widget.phone),
     IconButton(onPressed: (){
      Navigator.pop(context);
     }, icon: Icon(Icons.door_back_door_sharp))
   ],
 ),),);    
  }
}