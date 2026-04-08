import 'package:flutter/material.dart';

class SurveyPage extends StatelessWidget {
  const SurveyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Survey"),
      ),
      body: const Center(
        child: Text(
          "Survey Page (Boş)",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}