import 'package:flutter/material.dart';
import '../widgets/top_bar.dart';
import '../widgets/category_tabs.dart';
import '../widgets/post_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: TopBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CategoryTabs(),
            const SizedBox(height: 10),
            PostCard(),
            PostCard(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
