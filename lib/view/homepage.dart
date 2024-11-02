import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/feed_controller.dart';
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
          'Instagram',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: FeedController().feeds.length,
        itemBuilder: (context, index) => FeedCard(
        feed: FeedController().feeds[index],
        ),
        )
    );
  }
}
