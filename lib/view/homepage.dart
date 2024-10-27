import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/feedcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _nameState();
}

class _nameState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OurApp',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView(
        children: [
          FeedCard(),
          FeedCard(),
          FeedCard(),
          FeedCard(),
          FeedCard(),
        ],
      ),
    );
  }
}
