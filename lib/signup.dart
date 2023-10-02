import 'package:flutter/material.dart';
import 'package:quickassist/otp.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / 375.0;
    return Container(
      padding: EdgeInsets.fromLTRB(15 * fem, 17 * fem, 17 * fem, 8 * fem),
      width: 360 * fem,
      color: Color(0xffffffff),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin:
                  EdgeInsets.fromLTRB(0 * fem, 50 * fem, 0 * fem, 0 * fem),
                  width: 88 * fem,
                  height: 88 * fem,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/logo.png'),
                      )),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15 * fem, 20 * fem, 5 * fem, 31 * fem),
                  padding: EdgeInsets.fromLTRB(61 * fem, 11 * fem, 75 * fem, 11 * fem),
                  width: double.infinity,
                  height: 44 * fem,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff858585)),
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(100 * fem),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Container(
                          margin: EdgeInsets.fromLTRB(10 * fem, 0 * fem, 0 * fem, 1 * fem),
                          child: Text(
                            'Sign up with Google',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16 * fem,
                              fontWeight: FontWeight.w600,
                              height: 1.1725 * fem / fem,
                              color: Color(0xff0fb09e),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(9 * fem, 0 * fem, 4 * fem, 32 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * fem, 2 * fem, 0 * fem, 0 * fem),
                        width: 98 * fem,
                        height: 1 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xff858585),
                        ),
                      ),
                      SizedBox(
                        width: 5 * fem,
                      ),
                      Text(
                        'or sign up using',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14 * fem,
                          fontWeight: FontWeight.w400,
                          height: 1.1725 * fem / fem,
                          color: Color(0xff858585),
                        ),
                      ),
                      SizedBox(
                        width: 10 * fem,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                        width: 98 * fem,
                        height: 1 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xff858585),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(7 * fem, 0 * fem, 5 * fem, 25 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6 * fem),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // First Name
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * fem, 10 * fem, 0 * fem, 10 * fem),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
                              child: Text(
                                'First Name',
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
                                controller: firstNameController,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16 * fem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.1725 * fem / fem,
                                  color: Color(0xffdbdbdb),
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Last Name
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 10 * fem),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
                              child: Text(
                                'Last Name',
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
                                controller: lastNameController,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16 * fem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.1725 * fem / fem,
                                  color: Color(0xffdbdbdb),
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Email
                      Container(
                        margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 10 * fem),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
                              child: Text(
                                'Email',
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
                                controller: emailController,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16 * fem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.1725 * fem / fem,
                                  color: Color(0xffdbdbdb),
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Phone Number
                      Container(
                        margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
                              child: Text(
                                'Phone Number',
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
                                controller: phoneNumberController,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16 * fem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.1725 * fem / fem,
                                  color: Color(0xffdbdbdb),
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Otp()));
              // handleCreateAccountLinkTap(context);
            },
                child:Container(

                  margin: EdgeInsets.fromLTRB(8 * fem, 0 * fem, 5 * fem, 26 * fem),
                  width: double.infinity,
                  height: 44 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xff0fb09e),
                    borderRadius: BorderRadius.circular(100 * fem),
                  ),

                  child: Center(
                    child: Text(
                      'Send OTP',
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
          )

              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }
}
