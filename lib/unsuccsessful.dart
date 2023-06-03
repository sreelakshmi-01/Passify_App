import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:initial/payment.dart';

class Unsuccessful extends StatelessWidget {
  const Unsuccessful({Key? key}) : super(key: key);

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
            //opacity: 0.5,
            image: AssetImage('Assets/Images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 18,
              bottom: 689,
              left: 20,
              child: Transform.scale(
                scale: 1.25,
                child: Image.asset(
                  'Assets/Images/cloudsuccess.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 18,
              bottom: 320,
              left: 20,
              child: Transform.scale(
                scale: 0.6,
                child: Image.asset(
                  'Assets/Images/cross.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              bottom: -528,
              left: 0,
              child: Transform.scale(
                scale: 0.56,
                child: Image.asset(
                  'Assets/Images/personthink.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            const Positioned(
              top: 350,
              right: 0,
              bottom: 0,
              left: 50,
              child: Text(
                'Ticket Payment UnSuccessful',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: -10,
              right: 18,
              bottom: 20,
              left: 20,
              child: Transform.scale(
                scale: 1,
                child: Image.asset(
                  'Assets/Images/line.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 345, left: 95, right: 95),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Payment()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: const Text(
                          'Back to Payment',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
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
