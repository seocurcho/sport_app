import 'package:flutter/material.dart';
import 'package:sport_app/ui/page_s/login_screen.dart';
import 'package:sport_app/ui/page_s/registration_page.dart';

class Authpage extends StatefulWidget {
  Authpage({Key? key}) : super(key: key);

  @override
  State<Authpage> createState() => _AuthpageState();
}

class _AuthpageState extends State<Authpage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) => isLogin
      ? LoginPage(
          onClickedSignUp: toggle,
        )
      : RegistrationPage(
          onClickedLogIn: toggle,
        );

  void toggle() => setState(() => isLogin = !isLogin);
}
