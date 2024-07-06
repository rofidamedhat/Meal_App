import 'package:flutter/material.dart';
import 'package:meals_app/widgets/bottom_nav_bar.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildUI(context),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: const Text(
        'Favourite',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Container();
  }
}
