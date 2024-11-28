import 'package:flutter/material.dart';
import 'package:software_engineer_app/widgets/custome_box_container.dart';
import 'package:software_engineer_app/widgets/tab_bar_section.dart';
import 'package:software_engineer_app/widgets/work_details_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFE2F4FF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: CustomBoxContainer(),
          ),
          TabBarSection(),
          SizedBox(
            height: 20,
          ),
          WorkDetailsWidget(),
        ],
      ),
    );
  }
}
