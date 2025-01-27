//container (
//aligment: Aligment.center,
//width: 100, height: 100
//decoration:
// BoxDecoration (
//color: Colors.blue,
//shape: BoxShape.circle,
//boxShadow [BoxShadow(blurRadius:12, color: Colors.black, offset : Offset(-12,12)
//)
//]
//)
//)
//borderRadius: BorderRadius.vertikal(bottom: Radius.circular(12))
import 'package:flutter/material.dart';

class ProfileStatePage extends StatefulWidget {
  @override
  _ProfileStatePAge createState() => _ProfileStatePAge();
}

class _ProfileStatePAge extends State<ProfileStatePage> {
  String name = 'name';
  String number = 'number';
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [ 
            SizedBox(width: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                SizedBox(height: 10,width: 10,),
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle
                  ),
                ),
                SizedBox( width: 10,),
              Column(
                children: [
                  Text(name),
                  Text(number),
                ],
              ),
               ],
               
             ),
             Text(''),
             SizedBox(height: 15,),
            Container(
              color: Colors.blue,
              child: TextField(
                  controller: nameController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Name',
                  )),
            ),
            
            SizedBox( height: 10, width: 10,),
                Container(
                  color: Colors.blue,
                  child: TextField(
                                controller: numberController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Number',
                                )),
                ),
              ElevatedButton(onPressed: (){
                setState(() {
                  name = nameController.text;
                  number = numberController.text;
                });
              }, child: Text('Save')),
          ],
        ),
      ),
    );
  }
}
