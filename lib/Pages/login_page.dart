

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

// ignore: camel_case_types
class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

// ignore: camel_case_types
class _loginPageState extends State<loginPage> {
  String name = "";
  bool doAnimation = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage("assets/images/Login.png"),
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome $name',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800]),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter User Name',
                      labelText: 'User Name',
                    ),
                    onChanged: (stext) {
                      name = stext;
                      setState(() {});
                    }, //2:14
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  // 2:17 Container , inkwell 2:21:49
                  InkWell(
                    onTap: () async {
                      setState(() {
                        doAnimation = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoutes);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      alignment: Alignment.center,
                      // button animation 2:27:47
                      width: doAnimation ? 40 : 120,
                      height: 40,
                      child: doAnimation
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        // button animation 2:27:47
                        borderRadius: BorderRadius.circular(40),
                      ),
                      // ElevatedButton(              //2:17
                      //   child: Text(
                      //     'Login',
                      //   ),
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoutes);
                      //   },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
