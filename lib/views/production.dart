import 'package:flutter/material.dart';

class MyProduction extends StatefulWidget {
  const MyProduction({Key? key}) : super(key: key);

  @override
  _MyProductionState createState() => _MyProductionState();
}

class _MyProductionState extends State<MyProduction> {
   bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
 
    
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 60, top: 80),
              child: Text(
                'Add Production',
                style: TextStyle(color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            
            SingleChildScrollView(
                
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35,),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 3, color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                                
                              ),
                          
                                filled: true,
                                labelText: "Co_operative name",
                                labelStyle: TextStyle(color: Colors.white,)
                                ),
                                
                          ),
                          SizedBox(
                            height: 30,
                          ),
                       TextField(
            obscureText: _isObscure,
            decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(width: 3, color: Colors.blue),
                     borderRadius: BorderRadius.circular(10),
                        ),
                labelText: ' Address',
                labelStyle: TextStyle(color: Colors.white,),
                
                
                // this button is used to toggle the password visibility
             
                    ),
          ),
                        
                          SizedBox(
                            height: 30,
                          ),
                            TextField(
            obscureText: _isObscure,
            decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(width: 3, color: Colors.blue),
                     borderRadius: BorderRadius.circular(10),
                        ),
                   fillColor: Colors.black,
                labelText: 'Production Quantity',
                labelStyle: TextStyle(color: Colors.white,),
                
                
                // this button is used to toggle the password visibility
              
                    ),
          ),
                          
                          SizedBox(
                            height: 30,
                          ),
                  TextField(
            obscureText: _isObscure,
            decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(width: 3, color: Colors.blue),
                     borderRadius: BorderRadius.circular(10),
                        ),
                   fillColor: Colors.white,
                labelText: 'Date',
                labelStyle: TextStyle(color: Colors.white,),
                
                
                // this button is used to toggle the password visibility
            
                    ),
          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                           
                            ],                                        
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          
                      Container(
                     padding: const EdgeInsets.fromLTRB(50, 0, 0, 10),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Save'),
                      onPressed: () {
                      Navigator.pushNamed(context, 'report');
                       },
                    )),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}