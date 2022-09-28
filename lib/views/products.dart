import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Products> {
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
              padding: EdgeInsets.only(left: 60, top: 50),
              child: Text(
                'Add Products',
                style: TextStyle(color: Colors.blue, fontSize: 25,fontWeight: FontWeight.bold),
              ),
            ),
            
            SingleChildScrollView(
                
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: const Text(
                        ' "Add Products here"\n ',
                        style: TextStyle(
                            fontSize: 17,),
                      )
                   ),
              ),
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
                                labelText: "Fish name",
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
                   fillColor: Colors.white,
                labelText: 'Fish Quantity',
                labelStyle: TextStyle(color: Colors.white,),
              
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
                labelText: ' Date',
                labelStyle: TextStyle(color: Colors.white,),
                
                
                // this button is used to toggle the password visibility
               
                    ),
          ),
                          SizedBox(
                            height: 30,
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
                     padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Add Product'),
                      onPressed: () {
                      Navigator.pushNamed(context, 'analyst');
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