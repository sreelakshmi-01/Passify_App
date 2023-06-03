import 'package:flutter/material.dart';
import 'package:initial/dashboard.dart';
import 'package:initial/forgot_password.dart';
import 'package:initial/register.dart';



//import 'package:passify/Screens/Registration.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
      child: Scaffold(
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
                  child: Image.asset('Assets/Images/Home1.png'),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset('Assets/Images/Pattern.png'),
                ),
                _header(context),
                _inputfield(context),
                _signup(context),
                _description(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      children: const [
        SizedBox(
          height: 270,
        ),
        Center(
          child: Text(
            'LOGIN',
            style: TextStyle(fontSize: 39, fontWeight: FontWeight.w900),
          ),
        ),
      ],
    );
  }

  _inputfield(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 370,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Username',
              hintText: 'Enter your Name',
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
              labelText: 'Password',
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
        Padding(
            padding: const EdgeInsets.only(left: 168),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Forget_Password()));
                },
                child: const Text("Forgot Password ?"))),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: ElevatedButton(
            onPressed: () {
               Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()));
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            child: const Text(
              'LOGIN',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }

  _signup(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 585,
        ),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 85),
              child: Center(
                child: Text("Don't have an account?"),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Registration()));
                },
                child: const Text("Register Here.")),
          ],
        )
      ],
    );
  }

  _description(context) {
    return Column(
      children: const [
        SizedBox(
          height: 735,
        ),
        Center(
          child: Text('"Travel with peace of mind with Passify'),
        ),
        Center(
          child: Text('-your all-in-one travel companion"'),
        )
      ],
    );
  }
}
