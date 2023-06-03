//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:initial/buspass.dart';
import 'package:initial/dashboard.dart';
import 'package:initial/logout.dart';
import 'package:initial/nobuspass.dart';
import 'package:initial/profileupd.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  get changeImageColor => null;

  get imageColor => null;

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
          image: const DecorationImage(
            image: AssetImage('Assets/Images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset('Assets/Images/Register.png'),
            ),
            Positioned(
              top: 50,
              right: 40,
              child: InkWell(
                onTap: () {
                  changeImageColor;
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const Profile_Upd(),
                      transitionDuration: Duration.zero,
                    ),
                  );
                },
                child: Image.asset(
                  'Assets/Icons/edit.png',
                  color: imageColor,
                  width: 25,
                  height: 25,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'Assets/Images/image25.png',
                width: 450,
                height: 550,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 70),
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('Assets/Images/image1.png'),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'ANANDU UNNIKRISHNAN',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    'Student',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  const SizedBox(height: 60),
                  Container(
                    width: 300,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: Padding(
                          padding: const //EdgeInsets.all(10.0),
                              EdgeInsets.symmetric(
                                  vertical: 30, horizontal: 10),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.person,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Anandu Unnikrishnan',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                          width:
                                              8), // Add spacing between Text and next Icon
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.business,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Department',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.phone,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Mobile Number',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.email_rounded,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Email',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(height: 10),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 180, left: 25),
                            child: InkWell(
                              onTap: () {
                                changeImageColor;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Dashboard()));
                              },
                              child: Image.asset(
                                'Assets/Icons/Home.png',
                                color: imageColor,
                                width: 35,
                                height: 35,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 180, left: 30),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Logout()));
                              },
                              child: Image.asset(
                                'Assets/Icons/Logout.png',
                                color: Colors.black87,
                                width: 35,
                                height: 35,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 180, left: 35),
                            child: InkWell(
                              onTap: () {},
                              child: Image.asset(
                                'Assets/Icons/Search.png',
                                color: Colors.black87,
                                width: 60,
                                height: 60,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 180, left: 40),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const nobuspass()));
                              },
                              child: Image.asset(
                                'Assets/Icons/navticket.png',
                                // color: Colors.black54,
                                width: 35,
                                height: 35,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 180, left: 45),
                            child: InkWell(
                              onTap: () {
                                Ink.image(
                                  image: AssetImage('Assets/Icons/Home.png'),
                                  width: 37,
                                  height: 37,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (context, animation,
                                                  secondaryAnimation) =>
                                              const Profile(),
                                          transitionDuration: Duration.zero,
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                              child: Image.asset(
                                'Assets/Icons/Avatar.png',
                                //color: Colors.black54,
                                width: 35,
                                height: 35,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
