import 'package:flutter/material.dart';
import 'package:quickassist/createp.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextEditingController emailOtpController = TextEditingController();
  TextEditingController smsOtpController = TextEditingController();

  bool isEmailOtpValid = false;
  bool isSmsOtpValid = false;

  @override
  Widget build(BuildContext context) {
    double fem =  MediaQuery.of(context).size.width / 375.0;

    void validateOtp() {
      // Implement your OTP validation logic here
      String emailOtp = emailOtpController.text;
      String smsOtp = smsOtpController.text;

      // For demonstration purposes, we'll consider OTPs "12345" and "54789" as valid
      if (emailOtp == "12345") {
        setState(() {
          isEmailOtpValid = true;
        });
      } else {
        setState(() {
          isEmailOtpValid = false;
        });
      }

      if (smsOtp == "54789") {
        setState(() {
          isSmsOtpValid = true;
        });
      } else {
        setState(() {
          isSmsOtpValid = false;
        });
      }

      if (isEmailOtpValid && isSmsOtpValid) {
        // Both OTPs are valid, you can navigate to the next screen or perform your desired action.
        // For now, we'll show a dialog.
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Success'),
              content: Text('OTP verification successful!'),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    // You can navigate to the next screen here.
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      } else {
        // Invalid OTPs, show an error message or take necessary action.
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('Invalid OTP. Please try again.'),
              actions: [
                ElevatedButton(
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

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(15 * fem, 17 * fem, 17 * fem, 8 * fem),
              margin: EdgeInsets.fromLTRB(5 * fem, 0 * fem, 5 * fem, 0 * fem),
              width: 360 * fem,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Container(
                  margin:
                  EdgeInsets.fromLTRB(0 * fem, 69 * fem, 0 * fem, 30 * fem),
                  width: 160 * fem,
                  height: 160 * fem,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/logo.png'),
                      )),
                ),
                  // ... (Previous code for header and containers)

                  // Email OTP
                  Container(
                    margin: EdgeInsets.fromLTRB(5 * fem, 0 * fem, 5 * fem, 20 * fem),
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
                            'Email OTP',
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
                            controller: emailOtpController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // SMS OTP
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(5 * fem, 0 * fem, 5 * fem, 20 * fem),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6 * fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 9 * fem),

                          child: Text(
                            'Sms OTP',
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
                            controller: smsOtpController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Resend OTP Link
                  Container(
                    margin: EdgeInsets.fromLTRB(2 * fem, 10 * fem, 0 * fem, 18 * fem),
                    child: InkWell(
                      onTap: () {
                        // Implement logic to resend OTP
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Resend OTP'),
                              content: Text('Resending OTP...'),
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text(
                        'Resend OTP',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16 * fem,
                          fontWeight: FontWeight.w500,
                          height: 1.1725 * fem / fem,
                          color: Color(0xff0fb09e),
                        ),
                      ),
                    ),
                  ),

                  // Verify Button
                  Container(
                    margin: EdgeInsets.fromLTRB(5 * fem, 0 * fem, 5 * fem, 0 * fem),
                    width: double.infinity,
                    height: 44 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff0fb09e),
                      borderRadius: BorderRadius.circular(100 * fem),
                    ),
                    child: ElevatedButton(
                      onPressed: () {

                          Navigator.push(context, MaterialPageRoute(builder: (context) => Createp()));
                          // handleCreateAccountLinkTap(context);

                        validateOtp();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff0fb09e),
                      ),
                      child: Text(
                        'Verify',
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
      ),
    );
  }
}
