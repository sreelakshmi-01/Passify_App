import 'dart:math';
import 'package:flutter/material.dart';
import 'Login.dart';

class Logout extends StatelessWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue.shade200,
                  Colors.purple.shade50,
                ],
              ),
            ),
            child: Stack(children: <Widget>[
              Align(
                  alignment: Alignment.center,
                  child: Opacity(
                    opacity: 0.7,
                    child: Image.asset('Assets/Images/Pattern.png'),
                  )),
              Positioned(
                  top: 85,
                  left: 138,
                  child: Image.asset(
                    'Assets/Images/image1.png',
                    height: 110,
                    width: 110,
                  )),
              Positioned(
                  bottom: 0,
                  //right: 0,
                  child: Image.asset(
                    'Assets/Images/logoutbg.png',
                    height: 450,
                    width: 400,
                  )),
              const Positioned(
                  top: 200,
                  left: 82,
                  child: Text(
                    'ANANDU UNNIKRISHNAN',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  )),
              const Positioned(
                  top: 220,
                  left: 168,
                  child: Text(
                    'Student',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                  )),
              const Positioned(
                  top: 350,
                  left: 44,
                  child: Text(
                    'Do you want to logout?',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 405, left: 30, right: 30),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Colors.black,
                      child: const Text(
                        'Yes',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 35, left: 30, right: 30),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Colors.black,
                      child: const Text(
                        'No',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w800),
                      ),
                    ),
                  )
                ],
              ),
            ])));
  }
}
