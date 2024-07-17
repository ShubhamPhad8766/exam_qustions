// ignore_for_file: avoid_print

import 'dart:async';

import 'package:flutter/material.dart';

class FeatureScreen extends StatefulWidget {
  const FeatureScreen({super.key});

  @override
  State<FeatureScreen> createState() => _FeatureScreenState();
}

class _FeatureScreenState extends State<FeatureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: featchData(),
        builder: (context, snapshot) {
          print(snapshot.connectionState);
          print("${snapshot.error}================================");

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return const Center(child: Text("data"));
        },
      ),
    );
  }

  Future<String> featchData() async {
    await Future.delayed(const Duration(seconds: 3));
    return "Shubham Phad";
  }
}
