import 'package:flutter/material.dart';

class CreateAccounts extends StatefulWidget {
  const CreateAccounts({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccounts> {
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
              padding: EdgeInsets.only(left: 120, top: 80),
              child: Text(
                'Add Co_operatives!',
                style: TextStyle(color: Colors.blue, fontSize: 25),
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
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 3, color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                                
                              ),
                          
                                filled: true,
                                labelText: "Co_operative name",
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
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.black,),
                
                
                // this button is used to toggle the password visibility
           
                    ),
          ),
                          SizedBox(
                            height: 20,
                          ),
                     
                          SizedBox(
                            height: 10,
                          ),
                          
                      Container(
                     padding: const EdgeInsets.fromLTRB(50, 0, 0, 10),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Create Account'),
                      onPressed: () {
                      Navigator.pushNamed(context, 'products');
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