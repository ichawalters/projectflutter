import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/feed_controller.dart';
import 'package:flutter_application_1/view/feedcard.dart';
import 'package:provider/provider.dart';

class FeedbookmarkPage extends StatefulWidget {
  const FeedbookmarkPage({super.key});

  @override
  State<FeedbookmarkPage> createState() => _nameState();
}

class _nameState extends State<FeedbookmarkPage> {
  @override
  Widget build(BuildContext context) {
   final controller = context.watch<FeedController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: ()async{
          await Future.delayed(const Duration(seconds: 1));
          controller.refresh();
        },
        child: ListView.builder(
          itemCount: controller.bookmarkedFeeds.length,
          itemBuilder: (context, index) => FeedCard(
          feed: controller.bookmarkedFeeds[index],
          ),
          ),
      )
    );
  }
}