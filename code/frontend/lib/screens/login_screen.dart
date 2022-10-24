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
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Create a text field for the email
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
        // Create a button to login
        ElevatedButton(
          onPressed: () {},
          child: const Text('Login'),
        ),
        const SizedBox(height: 20),
      ],
    );

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              loginColumn,
              Image.asset(
                  'assets/bg.png',
                ),
            ],
          ),
        ),
      ),
    );
  }
}


// return Scaffold(
//         // Create a body for the scaffold
//         body: SafeArea(
//             child: Container(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//             width: double.infinity,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Flexible(
//                   flex: 2,
//                   child: Container(),
//                 ),
//                 Image.asset(
//                   'assets/bg.png',
//                   height: 200,
//                 ),
//                 const SizedBox(height: 20),

//                 SizedBox(
//                   width: 200,
//                   child:
//                   TextFieldInput(
//                   hintText: 'Enter your email',
//                   textInputType: TextInputType.emailAddress,
//                   textEditingController: _emailController,
//                   ),
//                 ),
                               
//               ],
//             ),
//           )
//         )
//       );