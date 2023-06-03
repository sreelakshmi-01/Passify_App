import 'package:flutter/material.dart';
import 'package:initial/buspass.dart';
import 'package:initial/confirm.dart';
import 'package:initial/logout.dart';
import 'package:initial/profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _HomeState();
}

class _HomeState extends State<Dashboard> {
  Color imageColor = Colors.black54;
  void changeImageColor() {
    setState(() {
      imageColor = Colors.blue;
    });
  }

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
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset('Assets/Images/Home1.png'),
            ),
            Align(
                alignment: Alignment.center,
                child: Opacity(
                  opacity: 0.15,
                  child: Image.asset('Assets/Images/Pattern.png'),
                )),
            _header(context),
            _ticket(context),
            _destination(context),
            _bottombar(context),
          ],
        ),
      ),
    );
  }
}

_header(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: const [
      SizedBox(
        height: 70,
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.only(left: 270),
          child: Text(
            'Hello,',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.right,
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.only(left: 215),
          child: Text(
            'Anandu',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            textAlign: TextAlign.right,
          ),
        ),
      ),
      SizedBox(
        height: 125,
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.only(right: 179),
          child: Text(
            'Current Bookings',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            textAlign: TextAlign.right,
          ),
        ),
      ),
      SizedBox(
        height: 140,
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.only(right: 212),
          child: Text(
            'Destinations',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            textAlign: TextAlign.right,
          ),
        ),
      ),
    ],
  );
}

_ticket(context) {
  return Padding(
    padding: const EdgeInsets.only(top: 275),
    child: SizedBox(
      height: 140,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, right: 15, left: 8),
                    child: Image.asset('Assets/Images/Ticket.png'),
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'SJCET',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          'SJC',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1),
                        child: Text(
                          'Passenger',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(
                          'Anandu',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 22, bottom: 30, right: 15, left: 10),
                    child: Image.asset('Assets/Images/To.png'),
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'Vaikom',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          'VKM',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1),
                        child: Text(
                          'Price',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(
                          '150',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, right: 15, left: 8),
                    child: Image.asset('Assets/Images/Ticket.png'),
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'Vaikom',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          'VKM',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1),
                        child: Text(
                          'Passenger',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(
                          'Anandu',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 22, bottom: 30, right: 15, left: 15),
                    child: Image.asset('Assets/Images/To.png'),
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'SJCET',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          'SJC',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1),
                        child: Text(
                          'Price',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(
                          '150',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
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

_destination(context) {
  return Padding(
    padding: const EdgeInsets.only(top: 435),
    child: SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              width: 220,
              height: 120,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 10, 126, 221),
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage('Assets/Images/BG1.png'),
                  fit: BoxFit.scaleDown,
                ),
              ),
              margin: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    children: [
                      //First Box
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, bottom: 22, top: 25),
                        child: Column(
                          children: const [
                            Text(
                              'Vaikom',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              'VKM',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 65),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 18, left: 5),
                            child: Text(
                              '₹150',
                              style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //Second Box
          Container(
            width: 220,
            height: 120,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 10, 126, 221),
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                alignment: Alignment.bottomCenter,
                image: AssetImage('Assets/Images/BG2.png'),
                fit: BoxFit.scaleDown,
              ),
            ),
            margin: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, bottom: 22, top: 25),
                      child: Column(
                        children: const [
                          Text(
                            'Pala',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'PLA',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 93),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 18, left: 10),
                          child: Text(
                            '₹80',
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //Third Box
          Container(
            width: 220,
            height: 120,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 10, 126, 221),
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                alignment: Alignment.bottomCenter,
                image: AssetImage('Assets/Images/BG3.png'),
                fit: BoxFit.scaleDown,
              ),
            ),
            margin: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, bottom: 22, top: 25),
                      child: Column(
                        children: const [
                          Text(
                            'Bharananganam',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'BGM',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 18, left: 10),
                          child: Text(
                            '₹50',
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //Forth Box
          Container(
            width: 220,
            height: 120,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 10, 126, 221),
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                alignment: Alignment.bottomCenter,
                image: AssetImage('Assets/Images/BG4.png'),
                fit: BoxFit.scaleDown,
              ),
            ),
            margin: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, bottom: 22, top: 25),
                      child: Column(
                        children: const [
                          Text(
                            'Thiruvalla',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'TVL',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 18, left: 5),
                          child: Text(
                            '₹170',
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //Fifth Box
          Container(
            width: 220,
            height: 120,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 10, 126, 221),
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                alignment: Alignment.bottomCenter,
                image: AssetImage('Assets/Images/BG5.png'),
                fit: BoxFit.scaleDown,
              ),
            ),
            margin: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, bottom: 22, top: 25),
                      child: Column(
                        children: const [
                          Text(
                            'Kottayam',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'KTM',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 55),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 18, left: 5),
                          child: Text(
                            '₹120',
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //Arrow
          Padding(
            padding: const EdgeInsets.only(right: 18, left: 5),
            child: InkWell(
              onTap: () {},
              child: Image.asset(
                'Assets/Icons/Rarrow.png',
                width: 35,
                height: 35,
              ),
            ),
          )
        ],
      ),
    ),
  );
}

_bottombar(BuildContext context) {
  return Column(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 700, left: 30),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  // Handle button press here
                },
                splashColor: Colors.blue, // Add the desired splash color here.
                //Home button
                child: Ink.image(
                  image: AssetImage('Assets/Icons/Home.png'),
                  width: 37,
                  height: 37,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const Dashboard(),
                          transitionDuration: Duration.zero,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 705, left: 30),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  // Handle button press here
                },
                splashColor: Colors.blue,
                // Add the desired splash color here
                //Logout button
                child: Ink.image(
                  image: AssetImage('Assets/Icons/Logout.png'),
                  width: 37,
                  height: 37,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Logout()));
                    },
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 703, left: 35),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  // Handle button press here
                },
                splashColor: Colors.blue, // Add the desired splash color here
                //search button
                child: Ink.image(
                  image: AssetImage('Assets/Icons/Search.png'),
                  width: 54,
                  height: 54,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const confirm()),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 700, left: 40),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  // Handle button press here
                },
                splashColor: Colors.blue, // Add the desired splash color here
                //ticket
                child: Ink.image(
                  image: AssetImage('Assets/Icons/navticket.png'),
                  width: 37,
                  height: 37,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Buspass()));
                    },
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 703, left: 30),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  // Handle button press here
                },
                splashColor: Colors.black, // Add the desired splash color here
                //profile
                child: Ink.image(
                  image: AssetImage('Assets/Icons/Avatar.png'),
                  width: 37,
                  height: 37,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Profile()));
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
