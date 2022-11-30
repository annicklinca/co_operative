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
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(),
            Container(
              padding: const EdgeInsets.only(left: 60, top: 80),
              child: const Text(
                'Add Co_operatives',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
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
                      margin: EdgeInsets.only(
                        left: 35,
                        right: 35,
                      ),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                labelText: "Co_operative name",
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                labelText: ' Address',
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),

                                // this button is used to toggle the password visibility
                                suffixIcon: IconButton(
                                    icon: Icon(
                                      _isObscure
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    })),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 3, color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              fillColor: Colors.black,
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),

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
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
                              decoration: BoxDecoration(color: Colors.blue),
                              child: TextButton(
                                child: Text('Create Account'),
                                onPressed: () {
                                  Navigator.pushNamed(context, 'user_home');
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
