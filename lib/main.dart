import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'about_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'appuas',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/about': (context) => AboutPage(),
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Email Field
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              // Password Field
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              // Sign In Button
              ElevatedButton(
                onPressed: () {
                  // Add your sign in logic here
                  print('Sign In button pressed');
                },
                child: Text('Sign In'),
              ),

              SizedBox(height: 16),

              // Sign Up and About Buttons (Horizontal Alignment)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Sign Up Button
                  TextButton(
                    onPressed: () {
                      // Navigate to Sign Up Page
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text('Sign Up'),
                  ),

                  SizedBox(width: 16),

                  // About Button
                  TextButton(
                    onPressed: () {
                      // Navigate to About Page
                      Navigator.pushNamed(context, '/about');
                    },
                    child: Text('About'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
