import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/feed_controller.dart';
import 'package:flutter_application_1/view/feedbookmark_page.dart';
import 'package:flutter_application_1/view/feedcard.dart';
import 'package:flutter_application_1/view/profilpage.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; 

  
  final List<Widget> _pages = [
    const HomePageContent(), 
    const FeedbookmarkPage(), 
    ProfilPage(), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OurApp',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      body: _pages[_currentIndex], 
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, 
        
        onTap: (index) {
          setState(() {
            _currentIndex = index; 
            
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}


class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<FeedController>();
    return RefreshIndicator(
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
    );
  }
}
