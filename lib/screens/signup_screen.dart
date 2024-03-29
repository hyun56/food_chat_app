import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 53), // Add horizontal padding
              child: Card(
                color: Colors.white,
                elevation: 0.0, // Remove the shadow
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 80, bottom: 25),
                      child: Text(
                        "회원가입",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w900,
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
                                    'Name',
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
                                  key: ValueKey('name'),
                                  autocorrect: false,
                                  //textCapitalization: TextCapitalization.none,
                                  validator: (value) {
                                    if (value!.isEmpty || value.length < 2) {
                                      return '이름은 2자 이상입니다.';
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    hintText: '이름을 입력하세요.',
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 15),
                                    border: InputBorder.none,
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
                                    if (value!.isEmpty ||
                                        !value.contains('@')) {
                                      return '이메일 형식에 맞게 입력해주세요.';
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    //labelText: 'Enter ID',
                                    hintText: '이메일주소를 입력하세요.',
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
                                      return '비밀번호는 7자 이상입니다.';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    hintText: '7자 이상',
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
                              SizedBox(height: 18),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 8, left: 5),
                                  child: Text(
                                    'Phone Number',
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
                                  key: ValueKey('phone'),
                                  autocorrect: false,
                                  //textCapitalization: TextCapitalization.none,
                                  validator: (value) {
                                    if (value!.isEmpty || value.length < 2) {
                                      return '올바른 휴대폰 번호를 입력해주세요.';
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    hintText: '(예시) 01012345678',
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 15),
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      color: Color(0xffa6a8b2),
                                      fontSize: 14,
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 50), // 회원가입 button 위에 여백
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
                                    "다음",
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
                              SizedBox(height: 8),
                              Container(
                                width: 238,
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
                                    "이전으로",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff73707b),
                                      fontSize: 15,
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
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
          ),
        ),
      ),
    );
  }
}
