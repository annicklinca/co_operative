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
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 120, top: 20),
              child: Text(
                'Add Products',
                style: TextStyle(color: Colors.blue, fontSize: 25),
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
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 3, color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                                
                              ),
                          
                                filled: true,
                                labelText: "Fish name",
                                labelStyle: TextStyle(color: Colors.black,)
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
                labelStyle: TextStyle(color: Colors.black,),
                
                
                // this button is used to toggle the password visibility
                suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off, color: Colors.white,),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    })
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
                labelText: 'Fish Quantity',
                labelStyle: TextStyle(color: Colors.black,),
                
                
                // this button is used to toggle the password visibility
                suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off, color: Colors.white,),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    })
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
                     padding: const EdgeInsets.fromLTRB(50, 0, 0, 10),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Add Product'),
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