import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dark_mode_provider.dart'; // Import the file you just created

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
      theme: ThemeData(
          // Your theme settings here
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 40.0), // Adjust the top padding as needed
              child: Container(
                height: 250.0, // Adjust the height as needed
                child: Image.asset(
                    'assets/logo.png'), // Replace 'assets/logo.png' with your logo image path
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 40.0,
                  left: 16.0), // Adjust the top and left padding as needed
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Login to your account',
                  style: TextStyle(
                    fontSize: 18.0, // Adjust the font size as needed
                    fontWeight:
                        FontWeight.bold, // Adjust the font weight as needed
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
              width: double.infinity, // Button width extends to screen width
              padding: EdgeInsets.symmetric(
                  horizontal: 20.0), // Adjust padding as needed
              child: ElevatedButton(
                onPressed: () {
                  // Handle login logic here
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            HomePage()), // Replace RegisterPage() with the actual constructor of your Register page
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF454545), // Set the button color to #454545
                  padding: EdgeInsets.symmetric(
                      vertical: 12.0), // Adjust vertical padding
                  minimumSize: Size.fromHeight(50.0), // Set the button height
                  elevation: 3, // Add a slight box shadow
                ),
                child: Text('Login'),
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              'Or continue with social account',
              style: TextStyle(
                fontSize: 16.0, // Adjust the font size as needed
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: 16.0), // Add horizontal padding
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      // Handle Apple login logic here
                    },
                    style: TextButton.styleFrom(
                      backgroundColor:
                          Colors.black, // Set the background color to black
                      primary: Colors.white, // Set the text color to white
                      padding: EdgeInsets.symmetric(
                          vertical: 12.0), // Adjust vertical padding
                      minimumSize:
                          Size.fromHeight(50.0), // Set the button height
                      elevation: 3, // Add a slight box shadow
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/apple.jpeg', // Replace with the path to your Apple logo image
                          height:
                              24.0, // Adjust the height of the Apple logo as needed
                        ),
                        SizedBox(
                            width:
                                8.0), // Add spacing between the logo and text
                        Text(
                          'Continue with Apple',
                          style: TextStyle(
                              fontSize: 16.0), // Adjust the font size as needed
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height: 16.0), // Add vertical spacing between buttons
                  TextButton(
                    onPressed: () {
                      // Handle Google login logic here
                    },
                    style: TextButton.styleFrom(
                      backgroundColor:
                          Colors.white, // Set the background color to white
                      primary: Colors.grey, // Set the text color to grey
                      padding: EdgeInsets.symmetric(
                          vertical: 12.0), // Adjust vertical padding
                      minimumSize:
                          Size.fromHeight(50.0), // Set the button height
                      elevation: 3, // Add a slight box shadow
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/google.jpeg', // Replace with the path to your Google logo image
                          height:
                              24.0, // Adjust the height of the Google logo as needed
                        ),
                        SizedBox(
                            width:
                                8.0), // Add spacing between the logo and text
                        Text(
                          'Continue with Google',
                          style: TextStyle(
                              fontSize: 16.0), // Adjust the font size as needed
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
                // Navigate to registration page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          RegisterPage()), // Replace RegisterPage() with the actual constructor of your Register page
                );
              },
              style: TextButton.styleFrom(
                primary: Color(0xFF454545), // Set the text color to #454545
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
            // Add other input decoration properties as needed
          ),
        ),
        SizedBox(height: 10.0),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Password',
            // Add other input decoration properties as needed
          ),
          obscureText: true, // Hide the password
        ),
      ],
    );
  }
}
