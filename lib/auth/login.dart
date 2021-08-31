import 'package:flutter/material.dart';

class Login extends StatelessWidget {
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
                      Text('Not Register yet '),
                      InkWell(
                        child: Text(
                          'Click Here',
                          style: TextStyle(color: Colors.blue),
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[200],
                      shadowColor: Colors.blue,
                      elevation: 10,
                      padding: EdgeInsets.all(15),
                      textStyle: TextStyle(fontSize: 15),
                    ),
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
