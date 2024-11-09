import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/feed_controller.dart';
import 'package:flutter_application_1/view/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider
        (create: (context) => FeedController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Belajar Flutter',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 255, 175, 248)),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
