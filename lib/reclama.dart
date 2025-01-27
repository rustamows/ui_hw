import 'package:flutter/material.dart';

class Reclama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('Search.png'),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 12, crossAxisSpacing: 12, crossAxisCount: 2),
                            itemCount: 20,
                            itemBuilder: (context, index){
                return Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.network(
                          '//tse1.mm.bing.net/th?id=OIP.wGEdJ55EQjk5dl9AxOxCHgHaGL&pid=Api&P=0&h=220',
                          width: double.infinity,
                          height: 155,

                        ),
                        Text('Egg Chicken whire$index'),
                        Text('180g, Price'),
                        Text('\$114'),
                      ]),
                );
                            },
                          ),
              )),
        ],
      ),
    );
  }
}
