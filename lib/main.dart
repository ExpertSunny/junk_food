import 'package:flutter/material.dart';
import 'package:flutter_app/homescreen.dart';
import 'package:flutter_app/screens/bottom_tab.dart';
import 'package:flutter_app/screens/dashboard.dart';
import 'package:flutter_app/widgets/sign_in.dart';
import 'package:flutter_app/widgets/sign_up.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const BottomTab(),
      title: "Test",
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings screens) {
        if (screens.name == SignInScreen.ROUTE_NAME) {
          return MaterialPageRoute(builder: (_) => SignInScreen());
        } else if (screens.name == SignUpScreen.ROUTE_NAME) {
          return MaterialPageRoute(builder: (_) => SignUpScreen());
        } else if (screens.name == DashBoard.ROUTE_NAME) {
          return MaterialPageRoute(builder: (_) => DashBoard());
        }
        return null;
      },
    );
  }
}
