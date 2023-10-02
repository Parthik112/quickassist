import 'package:flutter/material.dart';
import 'package:quickassist/login.dart';

class Createp extends StatefulWidget {
  const Createp({super.key});

  @override
  State<Createp> createState() => _CraetepState();
}

class _CraetepState extends State<Createp> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / 375.0;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(4 * fem, 17 * fem, 4 * fem, 8 * fem),
            width: double.infinity,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(11 * fem, 0 * fem, 13 * fem, 11 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * fem, 50 * fem, 208 * fem, 0 * fem),

                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(18 * fem, 0 * fem, 17 * fem, 26 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 14 * fem),
                        child: Text(
                          'Create a Password',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 24 * fem,
                            fontWeight: FontWeight.w500,
                            height: 1.1725 * fem / fem,
                            color: Color(0xff0fb09e),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                        constraints: BoxConstraints(
                          maxWidth: 316 * fem,
                        ),
                        child: Text(
                          'You will use this email and password to login into your account for all your subscribed apps and services.',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14 * fem,
                            fontWeight: FontWeight.w400,
                            height: 1.1725 * fem / fem,
                            letterSpacing: 0.7 * fem,
                            color: Color(0xff858585),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(18 * fem, 0 * fem, 19 * fem, 27 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6 * fem),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6 * fem),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 9 * fem),
                                    child: Text(
                                      'Enter Password',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 16 * fem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.1725 * fem / fem,
                                        color: Color(0xff0fb09e),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                                    padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                    width: 314 * fem,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: const Color(0xffb0b0b0)),
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(6 * fem),
                                    ),
                                    child: TextField(
                                      controller: passwordController,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Password',
                                        hintStyle: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 16 * fem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.1725 * fem / fem,
                                          color: Color(0xffdbdbdb),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                              constraints: BoxConstraints(
                                maxWidth: 310 * fem,
                              ),
                              child: Text(
                                'Use a combination of a minimum of 6 characters (case-sensitive) with each of the following characters, UPPER Case , lower case, numbers and special characters',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 12 * fem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.1725 * fem / fem,
                                  letterSpacing: 0.24 * fem,
                                  color: Color(0xff858585),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 26 * fem,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 9 * fem),
                              child: Text(
                                'Re-enter Password',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16 * fem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.1725 * fem / fem,
                                  color: Color(0xff0fb09e),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                              padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                              width: 314 * fem,
                              decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xffb0b0b0)),
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(6 * fem),
                              ),
                              child: TextField(
                                controller: confirmPasswordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Re-enter Password',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 16 * fem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1725 * fem / fem,
                                    color: Color(0xffdbdbdb),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 26 * fem,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(0 * fem, 4 * fem, 0 * fem, 4 * fem),
                        height: 47 * fem,
                        // child: Align(
                          // alignment: Alignment.centerRight,
                          child: SizedBox(
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: 248 * fem,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14 * fem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1725 * fem / fem,
                                    letterSpacing: 0.7 * fem,
                                    color: Color(0xff0fb09e),
                                  ),
                                  children: [

                                    TextSpan(

                                      text: 'You will be using this email to login\n',
                                    ),
                                    TextSpan(
                                      text: 'abc@gmail.com ',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14 * fem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.1725 * fem / fem,
                                        letterSpacing: 0.7 * fem,
                                        color: Color(0xff0fb09e),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        // ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(18 * fem, 0 * fem, 19 * fem, 160 * fem),
                  width: double.infinity,
                  height: 44 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xff0fb09e),
                    borderRadius: BorderRadius.circular(10 * fem),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                      handleCreateAccountButtonPress();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff0fb09e),
                    ),
                    
                    child: Text(
                      'Create My Account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16 * fem,
                        fontWeight: FontWeight.w600,
                        height: 1.1725 * fem / fem,
                        color: Color(0xffffffff),

                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  void handleCreateAccountButtonPress() {
    String password = passwordController.text;
    String confirmPassword = confirmPasswordController.text;

    if (password == confirmPassword) {
      // Passwords match, proceed with creating the account
      print('Creating account...');
      // Add your account creation logic here
    } else {
      // Passwords don't match, show an error message
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Password Mismatch'),
            content: Text('The entered passwords do not match. Please try again.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
}
