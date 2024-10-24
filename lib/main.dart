import 'package:chat/features/auth/presentation/views/login_view.dart';
import 'package:chat/features/chat/presentation/views/chat_view.dart';
import 'package:chat/features/home/presentation/views/home_screen.dart';
import 'package:chat/features/splash_screen/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/auth/presentation/views/signup_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SplashScreen.routeName: (context) => SplashScreen(),
        LoginView.routeName: (context) => LoginView(),
        SignupView.routeName: (context) => SignupView(),
        ChatView.routeName: (context) => ChatView(),
      },
    );
  }
}
