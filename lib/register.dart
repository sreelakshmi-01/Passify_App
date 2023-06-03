import 'package:flutter/material.dart';
import 'package:initial/dashboard.dart';
import 'package:initial/login.dart';
import 'package:initial/reg_profile.dart';


class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
                  child: Image.asset('Assets/Images/Register.png'),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Opacity(
                      opacity: 0.5,
                      child: Image.asset('Assets/Images/bg.png'),
                    )),
                _header(context),
                _inputfield(context),
                _login(context),
                _description(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_header(context) {
  return Column(
    children: const [
      SizedBox(
        height: 80,
      ),
      Center(
        child: Text(
          "PASSIFY",
          style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(168, 0, 0, 0)),
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Center(
        child: Text(
          "REGISTER",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900),
        ),
      )
    ],
  );
}

_inputfield(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      const SizedBox(
        height: 220,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Name',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            fillColor: Colors.white,
            filled: true,
            prefixIcon: const Icon(Icons.person),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          ),
        ),
      ),
      const SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Username',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            fillColor: Colors.white,
            filled: true,
            prefixIcon:  const Icon(Icons.person_outlined),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          ),
        ),
      ),
      const SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Email',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            fillColor: Colors.white,
            filled: true,
            prefixIcon: const Icon(Icons.email),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          ),
        ),
      ),
      const SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Mobile',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            fillColor: Colors.white,
            filled: true,
            prefixIcon: const Icon(Icons.mobile_friendly_outlined),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          ),
        ),
      ),
      const SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Password',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            fillColor: Colors.white,
            filled: true,
            prefixIcon: const Icon(Icons.lock),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          ),
          obscureText: true,
        ),
      ),
      const SizedBox(height: 50),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Reg_Profile()));
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          child: const Text(
            'Register',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    ],
  );
}

_login(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const SizedBox(
        height: 530,
      ),
      Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 85),
            child: Center(
              child: Text("Already have an account?"),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              child: const Text("Login Here.")),
        ],
      )
    ],
  );
}

_description(context) {
  return Column(
    children: const [
      SizedBox(
        height: 749,
      ),
      Center(
        child: Text('"Book bus tickets with ease using Passify"'),
      ),
    ],
  );
}
