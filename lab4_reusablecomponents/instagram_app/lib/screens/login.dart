import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final VoidCallback onLogin;
  LoginScreen({required this.onLogin});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("English (US) ⌵", style: TextStyle(color: Colors.grey, fontSize: 12)),
            SizedBox(height: 60),
            Image.asset("assets/images/ig.png", width: 80),
            SizedBox(height: 50),
            _buildTextField("Username, email or mobile number"),
            SizedBox(height: 12),
            _buildTextField("Password", obscure: true),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: onLogin,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0095F6),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              ),
              child: Text("Log in", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 15),
            Text("Forgot password?", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
            Spacer(),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Color(0xFF0095F6)),
                minimumSize: Size(double.infinity, 45),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              ),
              child: Text("Create new account", style: TextStyle(color: Color(0xFF0095F6))),
            ),
            SizedBox(height: 10),
            Text("∞ Meta", style: TextStyle(color: Colors.grey, fontSize: 12)),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, {bool obscure = false}) {
    return TextField(
      obscureText: obscure,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Color(0xFF121212),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
      ),
    );
  }
}