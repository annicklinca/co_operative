import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
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
              padding: EdgeInsets.only(left: 40, top: 80),
              child: Text(
                'Please Register Here!',
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
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 3, color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                                
                              ),
                          
                                filled: true,
                                labelText: "Fill Username",
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
                labelText: 'Fill Address',
                labelStyle: TextStyle(color: Colors.white,),
                
                
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
                labelText: 'Fill Email',
                labelStyle: TextStyle(color: Colors.white,),
                
                
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
                   fillColor: Colors.white,
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
                      child: Text('Register'),
                      onPressed: () {
                      Navigator.pushNamed(context, 'home');
                       },
                    )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'signup');
                                },
                                child: Text(
                                  'Already Have an Account? Sign Up',
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