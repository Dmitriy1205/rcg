import 'package:ecg/ui/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

import 'core/themes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appThemeData(),
      home: const SignInScreen(),
    );
  }
}
