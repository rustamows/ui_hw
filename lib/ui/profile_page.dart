import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfilePage();
  }
}

class _ProfilePage extends State<ProfilePage> {
  String img =
      'https://tse4.mm.bing.net/th?id=OIP.hGSCbXlcOjL_9mmzerqAbQHaHa&pid=Api&P=0&h=220';
  bool post = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 24,
                ),
                Row(
                  children: [
                    Icon(Icons.lock),
                    Text('saidu1lo.08'),
                    Icon(Icons.keyboard_arrow_down_outlined)
                  ],
                ),
                Icon(
                  Icons.menu,
                  size: 24,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (index) {
                          return Dialog(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          );
                        });
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.5),
                        shape: BoxShape.circle),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        img,
                        width: 86,
                        height: 86,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      '1',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text('Posts')
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '287',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text('Folowers')
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '222',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text('Following')
                  ],
                ),
              ],
            ),
            Text('Rustamov'),
            RichText(
                text: TextSpan(children: [
              TextSpan(text: 'Student in Access and ProLab Flutter '),
              TextSpan(
                  text: '@rustamows.l7 ',
                  style: TextStyle(color: Colors.blue)),
              TextSpan(text: 'this my another profile '),
            ])),
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(3),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Edit Profile',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 12,),
            SizedBox(
              height: 83,
              child: ListView(
                scrollDirection: Axis.horizontal,
                 children: [ 
                  Column(children: [
                    Image.asset(
                      'pluse.png',
                      height: 56,
                      width: 56,
                    ),
                    Text('Добавить'),
                  ]),
                   SizedBox(width: 10,height: 10,),
                  Column(children: [
                    Image.network(
                      img,
                      height: 56,
                      width: 56,
                    ),
                    Text('Footboal'),
                  ]),
                   SizedBox(width: 10,height: 10,),
                  Column(children: [
                    Image.network(
                      img,
                      height: 56,
                      width: 56,
                    ),
                    Text('Libroary'),
                  ]),
                  SizedBox(width: 10,height: 10,),
                  Column(
                    children: [
                      Image.network(
                        img,
                        height: 56,
                        width: 56,
                      ),
                      Text('Friends'),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      if (post) return;
                      setState(() {
                        post = true;
                      });
                    },
                    icon: Icon(
                      Icons.grid_3x3,
                      color: post ? Colors.black : Colors.grey,
                    )),
                IconButton(
                    onPressed: () {
                      if (!post) return;
                      setState(() {
                        post = false;
                      });
                    },
                    icon: Icon(
                      Icons.person,
                      color: post ? Colors.grey : Colors.black,
                    ))
              ],
            ),
            if (post)
              Expanded(
                  child: GridView.builder(
                      itemCount: 50,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3, mainAxisSpacing: 4, crossAxisSpacing: 4),
                      itemBuilder: (context, index) {
                        return Image.network(fit: BoxFit.cover, 
                            'https://tse3.mm.bing.net/th?id=OIP.860tcrCo0PCgGBRfT_2HmgHaEK&pid=Api&P=0&h=220');
                      }))
          ],
        ),
      ),
    );
  }
}
