import 'package:flutter/material.dart';

void main() {
  runApp(CreateAccountApp());
}

class CreateAccountApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Account',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CreateAccountPage(),
    );
  }
}

class CreateAccountPage extends StatelessWidget {
  bool passwordObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 1.0), // Adjust this value as needed
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                SizedBox(height: 20.0),
                Image.asset('asset/download.png', height: 80),
                SizedBox(height: 20.0),
                Center(
                  child: Text(
                    'Create An Account',
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 10.0, height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'abc@mail.com',
                    prefix: Icon(
                      Icons.email_rounded,
                      color: Colors.black,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(width: 10, height: 20.0),
                TextField(
                  obscureText: passwordObscured,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'password',
                    suffixIcon: Icon(Icons.visibility_off, color: Colors.black),
                    //  obscureText:true,
                    prefix: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Checkbox(
                          value: false,
                          checkColor: Colors.orangeAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ), //// Remember Me Checkbox
                          onChanged: (isChecked) {}),
                    ),
                    Center(
                        child: Text(
                      'Remember Me',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    )),
                  ],
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    backgroundColor: Colors.orangeAccent,
                    // Background color
                  ),
                  child: Text('Sign Up'),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Text(
                    'or continue with',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.facebook_outlined,
                      color: Colors.blue,
                      size: 36.0,
                    ),
                    Image.asset(
                      'asset/googleicon.png',
                      height: 28,
                    ),
                    Icon(
                      Icons.apple_outlined,
                      color: Colors.black87,
                      size: 33.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                    child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 62),
                        child: Text('Already have an account?',
                            style: TextStyle(fontSize: 14, color: Colors.grey)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 1),
                        child: InkWell(
                            onTap: () {
                              print('Welcome to Byke Sales');
                            },
                            child: Text(
                              'Sign in.',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.green),
                            )),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
