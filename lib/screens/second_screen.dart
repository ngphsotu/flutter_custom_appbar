import 'package:flutter/material.dart';
import 'package:flutter_custom_appbar/background_painter.dart';
import 'package:flutter_custom_appbar/custom_appbar.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const BackButton(),
        ),
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
