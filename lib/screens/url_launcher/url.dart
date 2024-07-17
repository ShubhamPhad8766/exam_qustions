import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlScreen extends StatefulWidget {
  const UrlScreen({super.key});

  @override
  State<UrlScreen> createState() => _UrlScreenState();
}

class _UrlScreenState extends State<UrlScreen> {
  final Uri _url = Uri.parse('https://pub.dev/packages/url_launcher');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            ElevatedButton(onPressed: _launcherUrl, child: const Text("Go...")),
      ),
    );
  }

  Future<void> _launcherUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Error');
    }
  }
}
