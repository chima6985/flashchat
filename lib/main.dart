// import 'package:firebase_core/firebase_core.dart';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

void main() async {
  FlutterError.onError = (details) {
  log('Flutter error: ${details.exceptionAsString()}');
};
  // WidgetsFlutterBinding.ensureInitialized();

  // final options = const FirebaseOptions(
  //   apiKey: 'AIzaSyDGW1Oy8UsC8JZqLGR5UzO0vosR6nLCb7g',
  //   appId: 'com.chima.flash_chat',
  //   messagingSenderId: 'your-messaging-sender-id',
  //   projectId: 'flash-chat-3996f',
  // );

  // await Firebase.initializeApp();
  try {
    runApp(FlashChat());
  } catch (e) {
    log("the error is: $e");
  }
}

class ExmapleApp extends StatelessWidget {
  const ExmapleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
