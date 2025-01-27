import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(), borderRadius:BorderRadius.circular(18),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                  Image.network(
                '//tse1.mm.bing.net/th?id=OIP.wGEdJ55EQjk5dl9AxOxCHgHaGL&pid=Api&P=0&h=220',
                width: 150,
                height: 85,),
                Text('Egg Chicken whire'),
              Text('180g, Price'),
              Row(
               mainAxisSize: MainAxisSize.min,
                children: [
                  Text('\$1.50'),
                  Container(
                    width: 45,
                    height: 45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(Icons.add),
                  ),
              ],
            )
              ]
            ),
               ),
      ));
    
  }
}
