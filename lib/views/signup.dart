import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
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
              padding: EdgeInsets.only(left: 120, top: 140),
              child: Text(
                'Please Login Here!',
                style: TextStyle(color: Colors.blue, fontSize: 25),
              ),
            ),
            
            SingleChildScrollView(
                
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
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
                                labelText: "Username",
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
                   fillColor: Colors.black,
                labelText: 'Password',
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
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                           
                            ],                                        
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          
                      Container(
                     padding: const EdgeInsets.fromLTRB(50, 0, 0, 10),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login'),
                      onPressed: () {
                      Navigator.pushNamed(context, 'home');
                       },
                    )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'register');
                                },
                                child: Text(
                                  'Do not have an account? Sign Up',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                       color: Colors.blue,
                                      fontSize: 13),
                                ),
                                style: ButtonStyle(),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue,
                                      fontSize: 13,
                                    ),
                                  )),
                            ],
                          )
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