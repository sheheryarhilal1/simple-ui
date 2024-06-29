import 'package:flutter/material.dart';
import 'package:simple_ui_project/constants/widgets/custom_widget.dart';
import 'constants/app_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.appName),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: CustomWidget(
            text: '',
            imageUrl: 'https://via.placeholder.com/150', // Example URL
          ),
        ),
      ),
    );
  }
}
