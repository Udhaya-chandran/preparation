import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login form')),
      body: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(hintText: 'Enter your email'),
          ),
          SizedBox(height: 10),
          TextField(
            controller: passwordController,
            obscureText: !isPasswordVisible,
            decoration: InputDecoration(
              hintText: 'Enter yout password',
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
                icon: Icon(
                  isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {});
            },
            child: Text('Login'),
          ),
          SizedBox(height: 30),
          Text('Hello ${emailController.text}'),
        ],
      ),
    );
  }
}
