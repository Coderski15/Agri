import 'package:flutter/material.dart';
import 'welcome.dart';

void main() {
  runApp(register());
}


class register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Register Now',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle Google sign-in
              },
              child: Text('Continue with Google'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Handle email sign-in
              },
              child: Text('Continue with Mail'),
            ),
            Text(
              'OR',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                hintText: '+91',
                labelText: 'Phone Number',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => welcome()),
                );
              },
              child: Text('Register'),
            ),
            SizedBox(height: 8),


          ],
        ),
      ),
    );
  }
}
