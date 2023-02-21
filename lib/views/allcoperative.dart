
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Allcoperative extends StatelessWidget {
  const Allcoperative({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Page'),
        backgroundColor: Colors.black
      ),
      body:    Scrollbar(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: [
            for (int index = 1; index < 12; index++)
              Column(
                children: [
                  ListTile(
                    leading: ExcludeSemantics(
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Icon(Icons.compare_arrows_outlined),),
                    ),
                    title:
                    Text('ADERWA',
                      style: TextStyle(color: Colors.black, fontSize: 15), ),
                    subtitle: Text('kicukiro',
                      style: TextStyle(color: Colors.black, fontSize: 10), ),

                  ),
                  ListTile(
                    
                    leading: ExcludeSemantics(
                      child: CircleAvatar(
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.compare_arrows_outlined),),
                    ),
                    title:
                    Text('ABAJ',
                      style: TextStyle(color: Colors.black, fontSize: 15), ),
                    subtitle: Text('kibuye',
                      style: TextStyle(color: Colors.black, fontSize: 10), ),

                  ),
                ],
              )

          ],
        ),
      ),
    );
  }
}
