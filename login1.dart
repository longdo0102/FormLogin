import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: const Color(0xff59b745)),
      ),
      home: const LoginPage(),
    );
  }
}
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 32)),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: MediaQuery.of(context).size.height * 0.15,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        shrinkWrap: true,
        children: [
          const SizedBox(height: 20),
          _textfield(label: 'Username'),
          const SizedBox(height: 20),
          _textfield(label: 'Password', obscureText: true),
          const SizedBox(height: 20),
          InkWell(
            // onTap: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Hihi'))),
            child: RichText(
              textAlign: TextAlign.right,
              text: const TextSpan(
                text: 'Forgot ',
                style: TextStyle(color: Colors.grey, fontSize: 16),
                children: [
                  TextSpan(
                    text: 'Username / Password?',
                    style: TextStyle(color: Color(0xff59b745), fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff59b745),
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
              minimumSize: const Size(double.infinity, 60), //////// HERE
            ),
            child: const Text('SIGN IN', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Don\'t have an account? ', style: TextStyle(color: Colors.grey, fontSize: 16)),
          InkWell(
            onTap: () {},
            child: const Text('Sign Up', style: TextStyle(color: Color(0xff59b745), fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 90),
        ],
      ),
    );
  }

  Widget _textfield({String? label, bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)), borderSide: BorderSide.none),
        contentPadding: const EdgeInsets.symmetric(horizontal: 30),
        labelStyle: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        labelText: label,
        filled: true,
        fillColor: const Color(0xffececec),
      ),
    );
  }
}