import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart'; // Import for showing toast

class Dbsample extends StatefulWidget {
  const Dbsample({super.key});

  @override
  State<Dbsample> createState() => _DbsampleState();
}

class _DbsampleState extends State<Dbsample> {
  final TextEditingController _nameController = TextEditingController();

  void _submitData() async {
    String name = _nameController.text.trim();
    if (name.isNotEmpty) {
      // Show a toast when data is successfully added
      Fluttertoast.showToast(
        msg: 'Data added: $name',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
      );

      _nameController.clear(); // Clear the input field after submission
    } else {
      // Show a toast if no data is entered
      Fluttertoast.showToast(
        msg: 'Please enter a name',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Save Name to Database'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Enter Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _submitData,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
