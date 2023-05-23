import 'package:food_chat_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'community app',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        //primarySwatch: Colors.blue,
        colorScheme:
            ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple).copyWith(
          secondary: Colors.pink,
          brightness: Brightness.light,
        ),
        // primaryColor: Colors.pink,

        /*elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink, // 버튼 배경색
            foregroundColor: Colors.white, // 글씨색
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),

        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.pink,
        )),*/
      ),
      home: StreamBuilder(
        builder: (ctx, userSnapshot) {
          return LoginScreen();
        },
      ),
    );
  }
}
