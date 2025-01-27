import 'package:flutter/material.dart';
import 'package:lesson9/user.dart';

class UsersPage extends StatefulWidget {

@override
  State<StatefulWidget> createState() {
    return _UsersPage();
  }
}
class _UsersPage extends State<UsersPage> {
  List<User> users = [
    User(name: 'islamchik_001', massage: 'Come here bro'),
    User(name: 'dasr.1', massage: 'I dont understand'),
    User(name: 'rahmatov.07', massage: 'I dont know '),
    User(name: 'sard0r.1', massage: 'Who is it'),
    User(name: 'bek.l9', massage: 'Go to street'),
    User(name: 'mamajan0v.l4', massage: 'I will come back'),
    User(name: 'nadir.store', massage: 'Hello'),
    User(name: 'yusupov.l5', massage: 'Today I cant coming'),
    User(name: 'myratbek0vs', massage: 'You can halp me'),
    User(name: 'junior.10', massage: 'I coming on home'),
    User(name: 'cristiano7', massage: 'What do you doing'),
    User(name: 'yamale.17', massage: '0550225555 this my phone nomb'),
    User(name: 'b1lol.l7', massage: 'Have are you'),
  ];
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
          Container(
              width: double.infinity,
              height: 36,
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(10, 0, 18, 0),
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xff767680).withOpacity(0.12),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'search',
                ),
              )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return _users(index);
              },
            ),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.camera_alt_outlined),
              Text('Camera'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _users(int index) {
    return InkWell(
      onTap: () {
        setState(() {
        users.removeAt(index);
          
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                users[index].Image,
                width: 50,
                height: 50,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(users[index].name),
                    Text(users[index].massage),
                  ],
                ),
              ),
              Text('now'),
              Icon(Icons.camera_alt_outlined)
            ],
          ),
        ],
      ),
    );
  }
}
