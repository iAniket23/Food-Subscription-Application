// Import package and files
import 'package:flutter/material.dart';
import '/widgets/text_field.dart';

// Create a class for the login screen - a StatefulWidget
class LoginScreen extends StatefulWidget {
  // Create a constructor for the class
  const LoginScreen({super.key});

  // Create a state for the class - it is used to manage the state of the widget
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

// Class logic and variables
class _LoginScreenState extends State<LoginScreen> {
  // Create a text editing controller for the email text field
  final TextEditingController _emailController = TextEditingController();

  // dispose the text editing controller to avoid memory leaks
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  // Build the widget
  @override
  Widget build(BuildContext context) {
    // Create a scaffold widget
    return Scaffold(
        // Create a body for the scaffold
        body: SafeArea(
            child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 2,
                  child: Container(),
                ),
                Image.asset(
                  'assets/bg.png',
                  height: 200,
                ),
                TextFieldInput(
                  hintText: 'Enter your email',
                  textInputType: TextInputType.emailAddress,
                  textEditingController: _emailController,
                ),
              ],
            ),
          )
        )
      );
  }
}
