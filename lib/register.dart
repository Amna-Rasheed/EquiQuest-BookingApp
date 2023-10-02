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
                'assets/logo.png',
                height: 250.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Register here',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
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
                primary: Color(0xFF454545),
                padding: EdgeInsets.symmetric(vertical: 12.0),
                minimumSize: Size.fromHeight(50.0),
                elevation: 3,
              ),
              child: Text('Register Now'),
            ),
            SizedBox(height: 16.0),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                style: TextButton.styleFrom(
                  primary: Color(0xFF454545),
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
