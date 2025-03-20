import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class ProjectApp extends StatefulWidget {
  const ProjectApp({super.key});

  @override
  State<ProjectApp> createState() => _ProjectAppState();
}

class _ProjectAppState extends State<ProjectApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade200,
        animationDuration: const Duration(milliseconds: 250), // تسريع الانتقال
        animationCurve: Curves.easeInOut, // جعل الحركة أكثر سلاسة
        items: const <Widget>[
          Icon(Icons.task),
          Icon(Icons.business_center),
        ],
      ),
    );
  }
}