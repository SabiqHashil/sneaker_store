import 'package:flutter/material.dart';

class EnterDetails extends StatelessWidget {
  const EnterDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter Your Details'),
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
        child: Column(
          children: [
            SizedBox(height: 10.0),

            // Input fields
            TextField(
              decoration: InputDecoration(
                labelText: 'Full Name',
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Location',
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width:
                double.infinity, // Set width to occupy the full available width
            child: ElevatedButton(
              onPressed: () {
                // Handle submit button press (e.g., form submission)
                // ignore: avoid_print
                print('Submit button pressed!');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Set background color to green
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0), // Add padding to the button text
                child: Text(
                  'Proceed',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
