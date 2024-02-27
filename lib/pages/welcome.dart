import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "WELCOME TO EDU",
                    style: TextStyle(fontSize: 25, color: Colors.purple[300], fontWeight: FontWeight.w800, fontFamily: "myfont"),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SvgPicture.asset("assets/icons/chat.svg"),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple[800]),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 112, vertical: 12)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 12,),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/signup");
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple[50]),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 106, vertical: 12)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                left: 0,
                top: 0,
                child: Image.asset(
                  "assets/img/main_top.png",
                  width: 111,
                )),
            Positioned(
                left: 0,
                bottom: 0,
                child: Image.asset(
                  "assets/img/main_bottom.png",
                  width: 60,
                ))
          ],
        ),
      ),
    ));
  }
}
