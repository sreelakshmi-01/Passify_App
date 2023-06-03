import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:initial/dashboard.dart';
import 'package:initial/logout.dart';
import 'package:initial/nobuspass.dart';
import 'package:initial/payment.dart';
import 'package:initial/profile.dart';

class confirm extends StatelessWidget {
  const confirm({Key? key}) : super(key: key);

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
            // opacity: 0.5,
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 27,
              right: 0,
              bottom: 600,
              left: 50,
              child: Transform.scale(
                scale: 1.3,
                child: Image.asset(
                  'Assets/Images/busonconfirm.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Positioned(
              top: 280,
              left: 0,
              width: 392,
              height: 525,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50)),
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            const Positioned(
              top: 290,
              right: 80,
              bottom: 50,
              left: 40,
              child: Text(
                'Destination',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 141, 141, 141),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              left: 0,
              child: Transform.scale(
                scale: 0.9,
                child: Image.asset(
                  'Assets/Images/boxpattern.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            const Positioned(
              top: 358,
              right: 80,
              bottom: 50,
              left: 49,
              child: Text(
                'Number 4',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Positioned(
              top: 358,
              right: 0,
              bottom: 50,
              left: 290,
              child: Text(
                'Rs.150',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Positioned(
              top: 400,
              right: 0,
              bottom: 50,
              left: 170,
              child: Text(
                'Destination',
                style: TextStyle(
                  fontSize: 11,
                  color: Color.fromARGB(255, 141, 141, 141),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Positioned(
              top: 413,
              right: 0,
              bottom: 50,
              left: 162,
              child: Text(
                'Vaikom',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Positioned(
              top: 435,
              right: 0,
              bottom: 50,
              left: 212,
              child: Text(
                'VKM',
                style: TextStyle(
                  fontSize: 11,
                  color: Color.fromARGB(255, 141, 141, 141),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              top: 400,
              right: 0,
              bottom: 0,
              left: 0,
              child: Transform.scale(
                scale: 1,
                child: Image.asset(
                  'Assets/Images/confirmBG6.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            _bottombar(context),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 240, left: 25, right: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                           Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Payment()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          //  backgroundColor: const Color.fromRGBO(45, 65, 195, 1),
                        ),
                        child: const Text(
                          'Confirm Destination',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
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

_bottombar(context) {
  return Column(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 710, left: 30),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Dashboard()));
              },
              child: Image.asset(
                'Assets/Icons/Home.png',
                // color: Colors.black54,
                width: 37,
                height: 37,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 715, left: 30),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Logout()));
              },
              child: Image.asset(
                'Assets/Icons/Logout.png',
                // color: Colors.black54,
                width: 37,
                height: 37,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 713, left: 35),
            child: InkWell(
              onTap: () {},
              child: Image.asset(
                'Assets/Icons/Search.png',
                // color: Colors.black54,
                width: 54,
                height: 54,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 710, left: 40),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const nobuspass()));
              },
              child: Image.asset(
                'Assets/Icons/navticket.png',
                // color: Colors.black54,
                width: 37,
                height: 37,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 710, left: 30),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profile()));
              },
              child: Image.asset(
                'Assets/Icons/Avatar.png',
                // color: Colors.black54,
                width: 37,
                height: 37,
              ),
            ),
          ),
        ],
      )
    ],
  );
}
