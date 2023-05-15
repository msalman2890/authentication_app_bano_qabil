import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void switchToLoginPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  void initState() {
    print("call hogaya");
    Future.delayed(Duration(seconds: 3), switchToLoginPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/header.png"),
          Spacer(),
          Text(
            "ANGEL SURE",
            style: GoogleFonts.akayaTelivigala(
                fontSize: 36,
                fontWeight: FontWeight.w400,
                color: Color(0xff2F80ED)),
          ),
          Image.asset(
            "assets/logo.png",
            height: 239,
            width: 298,
          ),
          Spacer(),
          Image.asset("assets/footer.png"),
        ]),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Login Page"),
      ),
    );
  }
}
