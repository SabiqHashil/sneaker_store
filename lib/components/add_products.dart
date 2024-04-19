import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
        child: Column(
          children: [
            // Image selection area
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () =>
                      // ignore: avoid_print
                      print('Pick image button pressed'), // Placeholder action
                  icon: const Icon(Icons.add_a_photo),
                  label: const Text('Add Image'),
                ),
              ],
            ),
            const SizedBox(height: 20.0),

            // Product name field
            const TextField(
              decoration: InputDecoration(
                labelText: 'Product Name',
              ),
            ),
            const SizedBox(height: 10.0),

            // Price field
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Price',
              ),
            ),
            const SizedBox(height: 10.0),

            // Description area
            const TextField(
              maxLines: null, // Enables multiline input
              decoration: InputDecoration(
                labelText: 'Description',
              ),
            ),
            const SizedBox(height: 20.0),
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
              backgroundColor: Colors.orange, // Set background color to green
            ),
            child: const Padding(
              padding: EdgeInsets.all(16.0), // Add padding to the button text
              child: Text(
                'Add Product',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
