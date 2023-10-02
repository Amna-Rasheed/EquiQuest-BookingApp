import 'package:flutter/material.dart';
import 'main.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/logo.png', // Replace with the path to your logo image
                height: 250.0, // Adjust the height of the logo as needed
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Register here',
              style: TextStyle(
                fontSize: 18.0, // Adjust the font size as needed
                fontWeight: FontWeight.bold, // Adjust the font weight as needed
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Your Name',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Contact Number',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Confirm Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF454545), // Set the button color to #454545
                padding: EdgeInsets.symmetric(
                    vertical: 12.0), // Adjust vertical padding
                minimumSize: Size.fromHeight(50.0), // Set the button height
                elevation: 3, // Add a slight box shadow
              ),
              child: Text('Register Now'),
            ),
            SizedBox(height: 16.0),
            Center(
              child: TextButton(
                onPressed: () {
                  // Navigate to login page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                style: TextButton.styleFrom(
                  primary: Color(0xFF454545), // Set the text color to #454545
                ),
                child: Text('Already have an account? Login here'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
