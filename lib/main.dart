import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dark_mode_provider.dart';

import 'register.dart';
import 'homepage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => DarkModeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Container(
                height: 250.0,
                child: Image.asset('assets/logo.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Login to your account',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: LoginForm(),
            ),
            SizedBox(height: 15.0),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF454545),
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  minimumSize: Size.fromHeight(50.0),
                  elevation: 3,
                ),
                child: Text('Login'),
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              'Or continue with social account',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      minimumSize: Size.fromHeight(50.0),
                      elevation: 3,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/apple.jpeg',
                          height: 24.0,
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          'Continue with Apple',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      primary: Colors.grey,
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      minimumSize: Size.fromHeight(50.0),
                      elevation: 3,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/google.jpeg',
                          height: 24.0,
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          'Continue with Google',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              style: TextButton.styleFrom(
                primary: Color(0xFF454545),
              ),
              child: Text('Don\'t have an account? Register here'),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Email',
          ),
        ),
        SizedBox(height: 10.0),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Password',
          ),
          obscureText: true,
        ),
      ],
    );
  }
}
