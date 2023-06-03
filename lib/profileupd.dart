import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:initial/profile.dart';

class Profile_Upd extends StatelessWidget {
  const Profile_Upd({Key? key}) : super(key: key);

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
                          const Profile(),
                      transitionDuration: Duration
                          .zero, // Sets the transition duration to zero (no motion)
                    ),
                  );
                },
                child: Image.asset(
                  'Assets/Icons/save.png',
                  color: imageColor,
                  width: 25,
                  height: 25,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Image.asset(
                'Assets/Images/image25.png',
                width: 450,
                height: 400,
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
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 1),
                              child: EditableRow(
                                icon: Icons.person,
                                initialText: 'Anandu Unnikrishnan',
                              ),
                            ),
                            const SizedBox(height: 30),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 1),
                              child: EditableRow(
                                icon: Icons.business,
                                initialText: 'Department',
                              ),
                            ),
                            const SizedBox(height: 30),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 1),
                              child: EditableRow(
                                icon: Icons.phone,
                                initialText: 'Mobile Number',
                              ),
                            ),
                            const SizedBox(height: 30),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 1),
                              child: EditableRow(
                                icon: Icons.email_rounded,
                                initialText: 'Email',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EditableRow extends StatefulWidget {
  final IconData icon;
  final String initialText;

  EditableRow({Key? key, required this.icon, required this.initialText})
      : super(key: key);

  @override
  _EditableRowState createState() => _EditableRowState();
}

class _EditableRowState extends State<EditableRow> {
  bool isEditing = false;
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController(text: widget.initialText);
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
      child: Row(
        children: [
          Icon(
            widget.icon,
            color: Colors.white,
          ),
          SizedBox(width: 15),
          Expanded(
            child: isEditing
                ? Container(
                    height: 15,
                    child: TextField(
                      controller: textEditingController,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                : Text(
                    textEditingController.text,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              setState(() {
                isEditing = !isEditing;
                if (!isEditing) {
                  // Save the new text when editing is finished
                  textEditingController.text =
                      textEditingController.text.trim();
                }
              });
            },
            child: Icon(
              isEditing ? Icons.check : Icons.edit,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
