import 'package:flutter/material.dart';
import 'package:wtf01/Login.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        extendBody: true,
        backgroundColor: Color(0xFFf2f1ec),
        body: Center(
        child: Container(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Image.asset('assets/image/registerLogo.png'),
    Text(
    'Create new Account',
    style: TextStyle(
    fontSize: 35,
    fontFamily: "MulishBlack",
    fontWeight: FontWeight.w900,
    color: Color(0xff1AC3A9),
    ),
    ),
    Expanded(
    child: SingleChildScrollView(
    child: Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Column(
    children: [
    SizedBox(height: 30),
    Column(
    children: [
    Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Align(
    alignment: Alignment.center,
    child: Text(
    'NAME',
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 17.0,
    fontWeight: FontWeight.w900,
    color: Color(0xff9b9a95),
    ),
    ),
    ),
    ),
    ClipRRect(
    borderRadius: BorderRadius.circular(16),
    child: Container(
    color: Color(0xffcccbc7),
    width: 250,
    height: 55,
    child: Align(
    alignment: Alignment.center,
    child: TextField(
    style: TextStyle(
    color: Color(0xff5e5d5b),
    fontSize: 19.0,
    ),
    decoration: InputDecoration(
    border: InputBorder.none,
    contentPadding: const EdgeInsets.all(12.0),
    ),
    ),
    ),
    ),
    ),
    ],
    ),
    const SizedBox(height: 16),
                  Container(


                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'EMAIL',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff9b9a95),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    color: Color(0xffcccbc7),
                    width: 250,
                    height: 55,
                    child: Align(
                      alignment: Alignment.center,
                      child: TextField(
                        style: TextStyle(
                          color: Color(0xFF5e5d5b),
                          fontSize: 19.0,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.all(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'PASSWORD',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff9b9a95),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    color: Color(0xffcccbc7),
                    width: 250,
                    height: 55,
                    child: Align(
                      alignment: Alignment.center,
                      child: TextField(
                        style: TextStyle(
                          color: Color(0xff5e5d5b),
                          fontSize: 19.0,
                        ),
                        obscureText: true,
                        textCapitalization: TextCapitalization.characters,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.all(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'DATE OF BIRTH',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff9b9a95),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    color: Color(0xffcccbc7),
                    width: 250,
                    height: 55,
                    child: Align(
                      alignment: Alignment.center,
                      child: TextField(
                        style: TextStyle(
                          color: Color(0xff5e5d5b),
                          fontSize: 19.0,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.all(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                SizedBox(
                  width: 250,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      // Perform sign up logic here

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff1AC3A9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      elevation: 0,
                      fixedSize: Size.fromHeight(48),
                    ),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        color: Color(0xFFf2f1ec),
                        fontWeight: FontWeight.w900,
                        fontSize: 19.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                RichText(
                  text: TextSpan(
                    text: 'Already Registered? ',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      WidgetSpan(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage()),
                            );
                          },
                          child: Text(
                            'Log in here',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
