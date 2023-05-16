import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginPage2(),
    );
  }
}
class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  bool keepSignedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        shrinkWrap: true,
        children: [
          const SizedBox(height: 35),
          const Text('SIGN IN TO YOUR ACCOUNT', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600), textAlign: TextAlign.center),
          const SizedBox(height: 20),
          _textfield(label: 'jonnythedesign@gmail.com'),
          const SizedBox(height: 20),
          _textfield(label: '*******', obscureText: true),
          const SizedBox(height: 20),
          CheckboxListTile(
            value: keepSignedIn,
            onChanged: (value) {
              keepSignedIn = value!;
              setState(() {});
            },
            title: const Text('Keep me signed in', style: TextStyle(color: Colors.grey, fontSize: 16)),
            activeColor: const Color(0xff746bde),
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.zero,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff746bde),
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
              minimumSize: const Size(double.infinity, 60), //////// HERE
            ),
            child: const Text('SIGN IN', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 20),
          const Text('Forgot your password?', style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500), textAlign: TextAlign.center),
        ],
      ),
    );
  }

  Widget _textfield({String? label, bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(3)), borderSide: BorderSide.none),
        contentPadding: const EdgeInsets.symmetric(horizontal: 30),
        hintText: label,
        filled: true,
        fillColor: const Color(0xffececec),
      ),
    );
  }
}