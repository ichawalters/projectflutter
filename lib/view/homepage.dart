import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/feed_controller.dart';
import 'package:flutter_application_1/view/feedbookmark_page.dart';
import 'package:flutter_application_1/view/feedcard.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _nameState();
}

class _nameState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<FeedController>();
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'OurApp',
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const FeedbookmarkPage()));
                },
                icon: const Icon(Icons.notifications_none_outlined)),
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 1));
            controller.refresh();
          },
          child: ListView.builder(
            itemCount: controller.length,
            itemBuilder: (context, index) => FeedCard(
              feed: controller.feed(index),
            ),
          ),
        ));
  }
}
