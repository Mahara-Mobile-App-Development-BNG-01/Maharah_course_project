// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:maharah_course_project/presentation/home_page/bottom_section.dart';
import 'package:maharah_course_project/presentation/home_page/header_section.dart';
// import 'package:maharah_course_project/presentation/widgets/home_page_widgets';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:
    Scaffold(
      body: Column(
        children: [  HeaderSectionOFhome(),
          Expanded(child: BottomSectionOFhome())
        ],
      ),
    )
    );
  }
}



