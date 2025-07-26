import 'package:flutter/material.dart';
import 'package:is_admin/is_admin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final isAdmin = IsAdmin.isAdmin;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('is_admin Example')),
        body: Center(
          child: Text(
            isAdmin ? 'Running as Admin/Root' : 'Not running as Admin',
          ),
        ),
      ),
    );
  }
}
