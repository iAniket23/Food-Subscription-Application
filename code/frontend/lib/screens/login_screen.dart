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
  final TextEditingController _passwordController = TextEditingController();

  // dispose the text editing controller to avoid memory leaks
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  // Build the widget
  @override
  Widget build(BuildContext context) {
    var loginColumn = Column(
      children: [
        // Create a text field for the email
        const SizedBox(height: 20),
        SizedBox(
          width: 400,
          child: TextFieldInput(
            textEditingController: _emailController,
            hintText: 'Enter Your Email Address',
            textInputType: TextInputType.emailAddress,
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 400,
          child: TextFieldInput(
            textEditingController: _passwordController,
            hintText: 'Enter your Password',
            textInputType: TextInputType.visiblePassword,
            isPass: true,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Login'),
        ),
        const SizedBox(height: 20),
      ],
    );

    var imageBackground = SizedBox(
      width: 800,
      child: Image.asset('assets/bgImage.png'),
    );

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
        child:SafeArea(
            child:Column(
            children:
             [
              imageBackground,
              loginColumn,
            ],
          ),
        ),
     ),
    ) 
      
    );
  }
}