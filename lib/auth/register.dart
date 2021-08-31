import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/favicon.png'),
          ),
          Form(
              child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Username',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        width: 1,
                      ))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        width: 1,
                      ))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        width: 1,
                      ))),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Text('Already Registered '),
                      InkWell(
                        child: Text(
                          'Click Here',
                          style: TextStyle(color: Colors.blue),
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed('loginPage');
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Register'),
                    style: Theme.of(context).elevatedButtonTheme.style,
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
