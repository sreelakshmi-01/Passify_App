import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:initial/dashboard.dart';

class nobuspass extends StatelessWidget {
  const nobuspass({Key? key}) : super(key: key);

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
          image: DecorationImage(
            image: AssetImage('Assets/Images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 165,
              right: 50,
              bottom: 50,
              left: 60,
              child: Text(
                'Bus Pass',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 160,
              right: 50,
              bottom: 50,
              left: 50,
              child: Image.asset(
                'Assets/Images/nopass.png',
                fit: BoxFit.scaleDown,
              ),
            ),
            Positioned(
              top: 105,
              right: 200,
              bottom: 420,
              left: 10,
              child: Transform.scale(
                scale: 0.58, // Adjust the scale factor as desired
                child: Image.asset(
                  'Assets/Images/iconprofile.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Positioned(
              top: 225,
              right: 200,
              bottom: 420,
              left: 135,
              child: Text(
                'Anandu',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 248,
              right: 200,
              bottom: 300,
              left: 135,
              child: Text(
                'Student',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: 650,
              child: Image.asset(
                'Assets/Images/image bus cloud.png',
                fit: BoxFit.scaleDown,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 25, bottom: 115, left: 65, right: 65),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Dashboard()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: Text(
                          'Back to Home',
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
