import 'package:flutter/material.dart';
import 'package:quickassist/home.dart';
import 'package:quickassist/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / 375.0; // Responsive factor

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20 * fem),
                width: 160 * fem,
                height: 160 * fem,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40 * fem),
                padding: EdgeInsets.symmetric(horizontal: 20 * fem),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // EmailId
                    Container(
                      margin: EdgeInsets.only(bottom: 24 * fem),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6 * fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Email ID',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 16 * fem,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff0fb09e),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5 * fem),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                ),
                                hintText: 'abc@quick-assist.in',
                                hintStyle: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16 * fem,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffb0b0b0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Password
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'Password',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 16 * fem,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff0fb09e),
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 16 * fem,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff0fb09e),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    // Enter Password
                    Container(
                      margin: EdgeInsets.only(top: 5 * fem),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6 * fem),
                          ),
                          hintText: 'abc@quick-assist.in',
                          hintStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16 * fem,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffb0b0b0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Checkbox Keep me signed in
              Container(
                margin: EdgeInsets.only(top: 8 * fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15 * fem),
                      child: Text(
                        'Keep me signed in',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16 * fem,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff333333),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // Login button
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20 * fem),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  },
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
              // Or signup with Google
              Container(
                margin: EdgeInsets.only(top: 31 * fem),
                padding: EdgeInsets.symmetric(horizontal: 2 * fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 12 * fem),
                      width: 98 * fem,
                      height: 1 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff858585),
                      ),
                    ),
                    SizedBox(width: 16 * fem),
                    Container(
                      margin: EdgeInsets.only(left: 8 * fem),
                      child: Text(
                        'or sign in with',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14 * fem,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff858585),
                        ),
                      ),
                    ),
                    SizedBox(width: 16 * fem),
                    Container(
                      margin: EdgeInsets.only(left: 8 * fem),
                      width: 98 * fem,
                      height: 1 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff858585),
                      ),
                    ),
                  ],
                ),
              ),
              // Continue with Google
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20 * fem),
                margin: EdgeInsets.only(top: 36 * fem),
                width: double.infinity,
                height: 44 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6 * fem),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 68 * fem, vertical: 11 * fem),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff858585)),
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(6 * fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 14 * fem),
                        width: 21 * fem,
                        height: 22 * fem,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6 * fem),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 1 * fem),
                        child: Text(
                          'Continue with Google',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16 * fem,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff0fb09e),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Create account
              // Container(
              //   margin: EdgeInsets.only(top: 44 * fem),
              //   child: Text(
              //     'Create an account',
              //     style: TextStyle(
              //       fontFamily: 'Roboto',
              //       fontSize: 16 * fem,
              //       fontWeight: FontWeight.w500,
              //       color: Color(0xff0fb09e),
              //     ),
              //   ),
              // ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                  // handleCreateAccountLinkTap(context);
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
    );
  }
}