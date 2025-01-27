import 'package:flutter/material.dart';

class Homework extends StatefulWidget {
  const Homework({Key? key}) : super(key: key);

  @override
  _HomeworkState createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  String fio = 'fio';
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(fio),
          SizedBox(width: 10,height: 18,),
        TextField(
            controller: nameController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Name',
            ),
          ),
          TextField(
            controller: lastNameController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Surname',
            ),
          ),
          ElevatedButton(onPressed: (){ setState(() {
            fio = '${nameController.text} ${lastNameController.text}';
          });}, child: Text('Save')),
          ElevatedButton(onPressed: (){setState(() {
          }); fio = 'fio'
          ;}, child: Text('Delete')),
        ]
        ),
    );
  }
}



