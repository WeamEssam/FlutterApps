import 'package:flutter/material.dart';
import 'package:software_engineer_app/widgets/custome_text_widget.dart';

class InfoDetails extends StatelessWidget {
  const InfoDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextWidget(
            text: 'Software ',
            style: TextStyle(
              color: Color(0xFF75828C),
              fontSize: 35,
              fontWeight: FontWeight.w500,
            ),
          ),
          CustomTextWidget(
            text: 'Engineer',
            style: TextStyle(
              color: Color(0xFF75828C),
              fontSize: 35,
              fontWeight: FontWeight.w500,
            ),
          ),
          CustomTextWidget(
            text: 'Type',
            style: TextStyle(
              color: Color(0xFF75828C),
              fontSize: 10,
            ),
          ),
          CustomTextWidget(
            text: 'Senior Employee',
            style: TextStyle(
              color: Color(0xFF75828C),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          CustomTextWidget(
            text: 'Joined',
            style: TextStyle(
              color: Color(0xFF75828C),
              fontSize: 10,
            ),
          ),
          CustomTextWidget(
            text: 'Sep 2018',
            style: TextStyle(
              color: Color(0xFF75828C),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          CustomTextWidget(
            text: 'Experience',
            style: TextStyle(
              color: Color(0xFF75828C),
              fontSize: 10,
            ),
          ),
          CustomTextWidget(
            text: '4 Years',
            style: TextStyle(
              color: Color(0xFF75828C),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
