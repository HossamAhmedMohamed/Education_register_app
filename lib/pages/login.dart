// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                child: Stack(
      children: [
        Positioned(
          child: Image.asset("assets/img/main_top.png"),
          left: 0,
          top: 0,
          width: 118,
        ),
        Positioned(
          child: Image.asset("assets/img/login_bottom.png"),
          right: 0,
          bottom: 0,
          width: 120,
        ),
        Container(
          margin: EdgeInsets.only(top: 15),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Container(
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.purple[300],
                      fontWeight: FontWeight.w800,
                      fontFamily: "myfont"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SvgPicture.asset("assets/icons/login.svg"),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(27),
                      ),
                      width: 290,
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.purple[800],
                            ),
                            hintText: "Your Email :",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(27),
                      ),
                      width: 290,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            suffix: Icon(
                              Icons.visibility,
                              color: Colors.purple[900],
                            ),
                            icon: Icon(
                              Icons.lock,
                              color: Colors.purple[800],
                              size: 19,
                            ),
                            hintText: "Password :",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[800]),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: 115, vertical: 12)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Dont have an account ?",
                            style:
                                TextStyle(fontSize: 15, color: Colors.purple),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/signup");
                            },
                            child: Text("Sign Up"),
                            style: ButtonStyle(
                            
                          )
                      )],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ))));
  }
}
