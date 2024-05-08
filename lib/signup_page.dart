import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Sign Up',
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.help_outline,
              color: Colors.deepOrange,
            ),
            onPressed: () {
              // Handle help icon pressed
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Image.asset(
                  'lib/images/logo.png',
                  height: 50.0,
                ),
              ),
            ),
            // Phone number field
            TextField(
              controller: _phoneNumberController,
              decoration: InputDecoration(
                hintText: 'Phone Number',
                prefixIcon: const Icon(Icons.phone),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),

            // Sign Up button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle sign-up logic here
                  print(
                      'Sign Up clicked with phone number: ${_phoneNumberController.text}');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            const SizedBox(height: 10.0),

            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Icon(
                    Icons.check_box_outline_blank,
                    color: Colors.grey,
                    size: 16.0,
                  ),
                ),
                const SizedBox(width: 5.0),
                Text(
                  'Activate ShopeePay to enjoy discounts and cashback offers',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30.0),

            // Divider dan label "ATAU"
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'ATAU',
                    style: TextStyle(color: Colors.grey.withOpacity(0.5)),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10.0),

            // Social login buttons
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'lib/images/google_logo.jpg',
                            height: 20.0, //
                            width: 20.0,
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              // Handle login with Google
                              print('Log in with Google clicked');
                            },
                            child: Text(
                              'Sign Up with Google',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black), //
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white, //
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.5), //
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'lib/images/facebook_logo.png',
                            height: 20.0, //
                            width: 20.0,
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              // Handle login with Facebook
                              print('Log in with Facebook clicked');
                            },
                            child: Text(
                              'Sign Up with Facebook',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black), //
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white, //
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.5), //
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'lib/images/WhatsApp_logo.jpg',
                            height: 20.0, //
                            width: 20.0,
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              // Handle login with WhatsApp
                              print('Log in with WhatsApp clicked');
                            },
                            child: Text(
                              'Sign Up with WhatsApp',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black), //
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),

            SizedBox(height: 30.0), //
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(
                    color: Colors.grey, //
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Login',
                      style: TextStyle(
                        color: Colors.blue, //
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpPage()));
                        },
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
