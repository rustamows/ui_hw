import 'package:flutter/material.dart';
import 'package:lesson9/ui/post.dart';

class MenuInstagram extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuInstagram();
  }
}

class _MenuInstagram extends State<MenuInstagram> {
  String img =
      'https://tse4.mm.bing.net/th?id=OIP.hGSCbXlcOjL_9mmzerqAbQHaHa&pid=Api&P=0&h=220';
  @override
  Widget build(BuildContext context) {
    return  ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.camera_alt,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MPostPage(phone: '123',)));
                },
                child: Text(
                  'Instagram',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Icon(Icons.send),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          
          SizedBox(
            height: 83,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index0){
                return Column(children: [
                  Image.network(
                    img,
                    height: 56,
                    width: 56,
                  ),
                  Text('Libroary'),
                ]);
              },
              
            ),
            
          ),
          SizedBox(
            height: 54,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                Column(children: [
                  Image.network(
                    img,
                    height: 35,
                    width: 35,
                  ),
                ]),
                Column( 
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('saidu1lo.08'),
                            Text('  Tokyo, Japan'),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Image.network('https://tse1.mm.bing.net/th?id=OIP.hjoj2J9a6RwvtXWR1jqOnQHaEo&pid=Api&P=0&h=220',width: double.infinity, fit: BoxFit.cover,),
              Positioned(top: 12,right: 12, child: Text('1/3', style: TextStyle(color: Colors.red, fontSize: 32),)),
            ],
          ),
       SizedBox(height: 10,),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [ SizedBox(width: 10,),
               Icon(Icons.heart_broken_outlined),SizedBox(width: 10,),
               Icon(Icons.comment),SizedBox(width: 10,),
               Icon(Icons.send),
             ],
           ),
           Icon(Icons.point_of_sale_outlined),
           Icon(Icons.save),
         ],
       ),
       SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.network(img, width: 20,height: 20,),
                SizedBox(width: 15,),
                Text('Liked by  craing_love and 44,686 others'),
              ],
            ),
            Text('joshua_l The game in Japan was amazing and i wont to'),
            Text('shape some photos'),
          ],
        ),
      ) ,
       SizedBox(
            height: 54,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                Column(children: [
                  Image.network(
                    img,
                    height: 35,
                    width: 35,
                  ),
                ]),
                Column( 
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('saidu1lo.08'),
                            Text('  Tokyo, Japan'),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Image.network('https://tse1.mm.bing.net/th?id=OIP.hjoj2J9a6RwvtXWR1jqOnQHaEo&pid=Api&P=0&h=220',width: double.infinity, fit: BoxFit.cover,),
       SizedBox(height: 10,),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [ SizedBox(width: 10,),
               Icon(Icons.heart_broken_outlined),SizedBox(width: 10,),
               Icon(Icons.comment),SizedBox(width: 10,),
               Icon(Icons.send),
             ],
           ),
           Icon(Icons.point_of_sale_outlined),
           Icon(Icons.save),
         ],
       ),
       SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.network(img, width: 20,height: 20,),
                SizedBox(width: 15,),
                Text('Liked by  craing_love and 44,686 others'),
              ],
            ),
            Text('joshua_l The game in Japan was amazing and i wont to'),
            Text('shape some photos'),
          ],
        ),
      ) ,
       SizedBox(
            height: 54,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                Column(children: [
                  Image.network(
                    img,
                    height: 35,
                    width: 35,
                  ),
                ]),
                Column( 
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('saidu1lo.08'),
                            Text('  Tokyo, Japan'),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Image.network('https://tse1.mm.bing.net/th?id=OIP.hjoj2J9a6RwvtXWR1jqOnQHaEo&pid=Api&P=0&h=220',width: double.infinity, fit: BoxFit.cover,),
       SizedBox(height: 10,),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [ SizedBox(width: 10,),
               Icon(Icons.heart_broken_outlined),SizedBox(width: 10,),
               Icon(Icons.comment),SizedBox(width: 10,),
               Icon(Icons.send),
             ],
           ),
           Icon(Icons.point_of_sale_outlined),
           Icon(Icons.save),
         ],
       ),
       SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.network(img, width: 20,height: 20,),
                SizedBox(width: 15,),
                Text('Liked by  craing_love and 44,686 others'),
              ],
            ),
            Text('joshua_l The game in Japan was amazing and i wont to'),
            Text('shape some photos'),
          ],
        ),
      ) ,
       SizedBox(
            height: 54,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                Column(children: [
                  Image.network(
                    img,
                    height: 35,
                    width: 35,
                  ),
                ]),
                Column( 
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('saidu1lo.08'),
                            Text('  Tokyo, Japan'),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Image.network('https://tse1.mm.bing.net/th?id=OIP.hjoj2J9a6RwvtXWR1jqOnQHaEo&pid=Api&P=0&h=220',width: double.infinity, fit: BoxFit.cover,),
       SizedBox(height: 10,),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [ SizedBox(width: 10,),
               Icon(Icons.heart_broken_outlined),SizedBox(width: 10,),
               Icon(Icons.comment),SizedBox(width: 10,),
               Icon(Icons.send),
             ],
           ),
           Icon(Icons.point_of_sale_outlined),
           Icon(Icons.save),
         ],
       ),
       SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.network(img, width: 20,height: 20,),
                SizedBox(width: 15,),
                Text('Liked by  craing_love and 44,686 others'),
              ],
            ),
            Text('joshua_l The game in Japan was amazing and i wont to'),
            Text('shape some photos'),
          ],
        ),
      ) ,
      
     ] );        
  }
}
