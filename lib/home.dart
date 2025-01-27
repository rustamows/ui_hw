import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int result = 0;
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('$result'),
          TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'number 1',
            ),
          ),
          TextField(
            controller: controller2,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'number 2 ',
            ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              result = int.parse(controller.text)+int.parse(controller.text);
            });
          }, child: Text('плюс')),
          ElevatedButton(onPressed: (){ setState(() {
           result= int.parse(controller2.text)-int.parse(controller.text); 
          });
          }, child: Text('минус'))

        ],
      ),
    );
  }
}
