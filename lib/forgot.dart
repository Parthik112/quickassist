import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  TextEditingController emailController = TextEditingController();
  bool emailSent = false;

  // Function to handle the "Send" button press
  void handleSendButtonPress() {
    final enteredEmail = emailController.text.trim();
    if (enteredEmail.isNotEmpty) {
      // Implement your logic to send a password reset email here
      // You can use packages like Firebase to send the email
      // For now, we'll just set emailSent to true for demonstration purposes.
      setState(() {
        emailSent = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / 375.0;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0 * fem, 10 * fem, 0 * fem, 0 * fem),
                child: Text(
                  'Forgot Password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 30 * fem,
                    fontWeight: FontWeight.w600,
                    height: 1.1725 * fem / fem,
                    color: Color(0xff0fb09e),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(19 * fem, 40 * fem, 19 * fem, 0 * fem),
                width: double.infinity,
                height: 89 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6 * fem),
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6 * fem),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            5 * fem, 0 * fem, 5 * fem, 0 * fem),
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 0 * fem),
                        constraints: BoxConstraints(
                          maxWidth: 281 * fem,
                        ),
                        child: Text(
                          'Please enter your email address to receive the password reset link',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14 * fem,
                            fontWeight: FontWeight.w400,
                            height: 1.1725 * fem / fem,
                            color: Color(0xff0fb09e),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            5 * fem, 0 * fem, 5 * fem, 0 * fem),
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 0 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffb0b0b0)),
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(6 * fem),
                        ),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: 'Enter your email',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(19 * fem, 15 * fem, 18 * fem, 0 * fem),
                width: double.infinity,
                 height: 44 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6 * fem),
                ),
                child: ElevatedButton(
                  onPressed: emailSent ? null : handleSendButtonPress,
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff0fb09e),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6 * fem),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      emailSent ? 'Email Sent' : 'Send',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16 * fem,
                        fontWeight: FontWeight.w600,
                        height: 1.1725 * fem / fem,
                        color: Colors.white,
                      ),
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