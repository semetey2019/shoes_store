import 'package:flutter/material.dart';

class ViewBanner extends StatefulWidget {
  const ViewBanner({super.key});

  @override
  State<ViewBanner> createState() => _ViewBannerState();
}

class _ViewBannerState extends State<ViewBanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ViewBanner'),
      ),
    );
  }
}
