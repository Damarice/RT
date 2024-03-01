import 'package:flutter/material.dart';

class TargetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get started'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome to the Target Screen!',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildEvaluationCard(
                    context,
                    title: 'NGO Evaluation',
                    description: 'Evaluate NGOs and their impact.',
                    onPressed: () {
                      _handleSignUp(context, 'NGO Evaluation');
                    },
                  ),
                  _buildEvaluationCard(
                    context,
                    title: 'Startup Evaluation',
                    description: 'Evaluate startups and their potential.',
                    onPressed: () {
                      _handleSignUp(context, 'Startup Evaluation');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEvaluationCard(BuildContext context,
      {required String title,
      required String description,
      required VoidCallback onPressed}) {
    return Expanded(
      child: Material(
        elevation: 4.0,
        child: InkWell(
          onTap: onPressed,
          hoverColor: Colors.grey.withOpacity(0.1),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.0),
                Text(
                  description,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleSignUp(BuildContext context, String evaluationType) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Sign Up for $evaluationType'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Enter your email:'),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              SizedBox(height: 10.0),
              Text('Enter your phone number:'),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Implement submit functionality
                Navigator.pop(context); // Close the dialog
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }
}
