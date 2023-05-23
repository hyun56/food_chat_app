import 'package:flutter/material.dart';
import 'package:food_chat_app/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 53), // Add horizontal padding
          child: Card(
            color: Colors.white,
            elevation: 0.0, // Remove the shadow
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 140, bottom: 25),
                  child: Text(
                    "떡뿌끼",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Form(
                      //key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 8, left: 5),
                              child: Text(
                                'ID',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xfff4f4f9),
                            ),
                            child: TextFormField(
                              key: ValueKey('email'),
                              autocorrect: false,
                              textCapitalization: TextCapitalization.none,
                              validator: (value) {
                                if (value!.isEmpty || !value.contains('@')) {
                                  return 'Please enter a valid email address.';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                //labelText: 'Enter ID',
                                hintText: 'Enter ID',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                border: InputBorder.none,
                                //floatingLabelBehavior:
                                //    FloatingLabelBehavior.never,
                                /*labelStyle: TextStyle(
                                  color: Color(0xff73707b),
                                  fontSize: 14,
                                  fontFamily: "Inter",
                                ),*/
                                hintStyle: TextStyle(
                                  color: Color(0xffa6a8b2),
                                  fontSize: 14,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 18),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 8, left: 5),
                              child: Text(
                                'Password',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xfff4f4f9),
                            ),
                            child: TextFormField(
                              key: ValueKey('password'),
                              validator: (value) {
                                if (value!.isEmpty || value.length < 7) {
                                  return 'Password must be at least 7 characters long.';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Enter Password',
                                contentPadding: EdgeInsets.only(left: 15),
                                border: InputBorder.none,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                hintStyle: TextStyle(
                                    color: Color(0xffa6a8b2),
                                    fontSize: 14,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w500),
                              ),
                              obscureText: true,
                            ),
                          ),
                          SizedBox(height: 50), // 로그인 button 위에 여백
                          Container(
                            width: 238,
                            height: 41,
                            child: ElevatedButton(
                              onPressed: () {
                                // Add your onPressed logic here
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff6b20de),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 0.0,
                              ),
                              child: Text(
                                "로그인",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8), // 회원가입 button 위에 여백
                          Container(
                            width: 238,
                            height: 41,
                            child: ElevatedButton(
                              onPressed: () {
                                // Add your onPressed logic here
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignupScreen()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff6b20de),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 0.0,
                              ),
                              child: Text(
                                "회원가입",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 8), // Adjust the spacing between buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 115,
                                height: 41,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Add your onPressed logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xfff4f4f9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    elevation: 0.0,
                                  ),
                                  child: Text(
                                    "ID 찾기",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff73707b),
                                      fontSize: 13,
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                  width:
                                      8.5), // Adjust the spacing between buttons
                              Container(
                                width: 115,
                                height: 41,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Add your onPressed logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xfff4f4f9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    elevation: 0.0,
                                  ),
                                  child: Text(
                                    "FW 찾기",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff73707b),
                                      fontSize: 13,
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
