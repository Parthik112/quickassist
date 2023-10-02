import 'package:flutter/material.dart';
import 'package:quickassist/login.dart';
import 'package:quickassist/signup.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  void handleLoginButtonPress(BuildContext context) {
    print('Login button pressed');
    // Add your login logic here
  }

  void handleCreateAccountLinkTap(BuildContext context) {
    print('Create an account link tapped');
    // Add your logic for creating an account here
  }

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / 375.0;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(16.0),
            width: 360 * fem,
            
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 180.0),
                  Center(
                    child: Container(
                      width: 160 * fem,
                      height: 160 * fem,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/logo.png'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0), // Added space between logo and text
                  Text(
                    'Welcome to the app',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 24 * fem,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff0fb09e),
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: 16.0), // Added space between text and description
                  Text(
                    'We’re excited to help you manage your business accounting at your fingertips.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16 * fem,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffb0b0b0),
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: 19.0), // Added space between description and buttons
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20 * fem),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff0fb09e),
                      ),
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16 * fem,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                      handleCreateAccountLinkTap(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 16.0),
                      child: Text(
                        'Create an account',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16 * fem,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff0fb09e),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Welcome(),
  ));
}
