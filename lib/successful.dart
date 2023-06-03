import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:initial/buspass.dart';

class Successful extends StatelessWidget {
  const Successful({Key? key}) : super(key: key);

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
                scale: 1.2,
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
                  'Assets/Images/tick.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              bottom: -535,
              left: 0,
              child: Transform.scale(
                scale: 1,
                child: Image.asset(
                  'Assets/Images/bgsuccess.png',
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
                'Ticket Payment Successful !',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),
            const Positioned(
              top: 380,
              right: 0,
              bottom: 0,
              left: 80,
              child: Text(
                'Transaction Number :SJC*****364',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              ),
            ),
            Positioned(
              top: 24,
              right: 18,
              bottom: -10,
              left: 20,
              child: Transform.scale(
                scale: 1,
                child: Image.asset(
                  'Assets/Images/line.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            const Positioned(
              top: 430,
              right: 0,
              bottom: 0,
              left: 80,
              child: Text(
                'Amount Paid : Rs.150.00',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 250, left: 140, right: 140),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Buspass()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: const Text(
                          'OK',
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
