import 'package:flutter/material.dart';

void main() => runApp(const Repport());

class Repport extends StatelessWidget {
  const Repport({Key? key}) : super(key: key);

  static const String _title = 'Co_operative';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('All Production', style: TextStyle(color: Colors.blue),),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.add_circle_outlined),
        //     tooltip: 'Show Snackbar',
        //     onPressed: () {
        //       ScaffoldMessenger.of(context).showSnackBar(
        //           const SnackBar(content: Text('This is a snackbar')));
        //     },
        //   ),
        // ],
      ),
      body:
      Scrollbar(
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
                    Text('On 23/07/2022',
                      style: TextStyle(color: Colors.black, fontSize: 15), ),
                    subtitle: Text('Quantity:30kg',
                      style: TextStyle(color: Colors.black, fontSize: 10), ),

                  ),
                  ListTile(
                    
                    leading: ExcludeSemantics(
                      child: CircleAvatar(
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.compare_arrows_outlined),),
                    ),
                    title:
                    Text('On 25/09/2022',
                      style: TextStyle(color: Colors.black, fontSize: 15), ),
                    subtitle: Text('Quantity:50kg',
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
