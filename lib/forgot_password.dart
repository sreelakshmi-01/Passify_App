import 'package:flutter/material.dart';

class Forget_Password extends StatelessWidget {
  const Forget_Password({Key? key}) : super(key: key);

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
                  alignment: Alignment.center,
                  child: Image.asset('Assets/Images/Pattern.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 12),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                    iconSize: 32,
                  ),
                ),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 270),
                      child: Center(
                        child: Text(
                          'Forgot Password ',
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w900),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5, left: 50, right: 50),
                      child: Center(
                        child: Text(
                          'Enter your Email and we will send a link to reset your password.',
                          style: TextStyle(fontSize: 17),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 50,
                        right: 50,
                        top: 30,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter your registered Mail',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: const Icon(Icons.mail_rounded),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: const Size(293, 45),
                      ),
                      child: const Text('Submit'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
