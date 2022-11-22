import 'package:flutter/material.dart';
import 'package:flutter_custom_appbar/custom_appbar.dart';

import 'background_painter.dart';
import 'second_screen.dart';

// Home Page
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar(
        title: 'Custom App Bar',
        titleWidget: const Icon(Icons.access_time, color: Colors.white),
        leading: const Icon(Icons.home, color: Colors.white),
        showActionIcon: true,
        onMenuActionTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SecondScreen()));
        },
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        child: CustomPaint(painter: BackgroundPainter()),
      ),
    );
  }
}
