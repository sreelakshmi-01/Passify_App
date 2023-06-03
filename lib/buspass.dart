import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:initial/dashboard.dart';

class Buspass extends StatelessWidget {
  const Buspass({Key? key}) : super(key: key);

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
            const Positioned(
              top: 160,
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
                'Assets/Images/image54.png',
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
              top: 160,
              right: 215,
              bottom: 200,
              left: 0,
              child: Transform.scale(
                scale: 0.5, // Adjust the scale factor as desired
                child: Image.asset(
                  'Assets/Images/date.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Positioned(
              top: 160,
              right: 0,
              bottom: 200,
              left: 60,
              child: Transform.scale(
                scale: 0.5, // Adjust the scale factor as desired
                child: Image.asset(
                  'Assets/Images/time.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Positioned(
              top: 520,
              right: 0,
              bottom: 200,
              left: 0,
              child: Transform.scale(
                scale: 1.1, // Adjust the scale factor as desired
                child: Image.asset(
                  'Assets/Images/qr.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            const Positioned(
              top: 215,
              right: 200,
              bottom: 420,
              left: 135,
              child: Text(
                'Anandu',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Positioned(
              top: 238,
              right: 200,
              bottom: 300,
              left: 135,
              child: Text(
                'Student',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ),
            const Positioned(
              top: 290,
              right: 200,
              bottom: 200,
              left: 80,
              child: Text(
                'From',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ),
            const Positioned(
              top: 290,
              right: 50,
              bottom: 200,
              left: 313,
              child: Text(
                'To',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ),
            const Positioned(
              top: 310,
              right: 200,
              bottom: 420,
              left: 80,
              child: Text(
                'SJCET',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Positioned(
              top: 310,
              right: 50,
              bottom: 420,
              left: 260,
              child: Text(
                'Thiruvalla',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Positioned(
              top: 365,
              right: 0,
              bottom: 0,
              left: 103,
              child: Text(
                '17 May,2023',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ),
            const Positioned(
              top: 364,
              right: 0,
              bottom: 0,
              left: 244,
              child: Text(
                '4:40 PM',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              bottom: 650,
              child: Image.asset(
                'Assets/Images/image bus cloud.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            const Positioned(
              top: 470,
              right: 0,
              bottom: 0,
              left: 80,
              child: Text(
                '14',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ),
            const Positioned(
              top: 470,
              right: 0,
              bottom: 0,
              left: 172,
              child: Text(
                'Thiruvalla',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ),
            const Positioned(
              top: 470,
              right: 0,
              bottom: 0,
              left: 255,
              child: Text(
                'SJC24-S15',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
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
                                  builder: (context) => const Dashboard()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: const Text(
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
