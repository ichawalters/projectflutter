import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/feedbookmark_page.dart';
import 'package:flutter_application_1/view/homepage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OurApp'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Aksi untuk notifikasi
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/27915633/pexels-photo-27915633/free-photo-of-a-woman-with-a-camera.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            ),
            const SizedBox(height: 8),
            const Text(
              'Agatha',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Photographer',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('My Membership'),
              onTap: () {
                // Aksi untuk Membership
              },
            ),
            ListTile(
              leading: const Icon(Icons.bookmark),
              title: const Text('My Collection'),
              trailing: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 12,
                child: const Text(
                  '24',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              onTap: () {
                // Aksi untuk Koleksi
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Logout', style: TextStyle(color: Colors.red)),
              onTap: () {
                // Aksi untuk Logout
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmarks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
              break;
            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const FeedbookmarkPage()),
              );
              break;
            case 2:
              // No action needed, already on ProfilePage
              break;
          } // Navigasi Bottom Navigation Bar
        },
      ),
    );
  }
}
