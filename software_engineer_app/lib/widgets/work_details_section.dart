import 'package:flutter/material.dart';
import 'package:software_engineer_app/widgets/custome_text_widget.dart';

class WorkDetailsSection extends StatelessWidget {
  const WorkDetailsSection({
    super.key,
    required this.number,
    required this.text,
    required this.subText,
  });
  final String number;
  final String text;
  final String subText;
  // final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
        child: Column(
          children: [
            CustomTextWidget(
                text: number,
                style: const TextStyle(
                  color: Color(0xFF75828C),
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                )),
            CustomTextWidget(
                text: text,
                style: const TextStyle(
                  color: Color(0xFF75828C),
                  fontSize: 16,
                )),
            CustomTextWidget(
                text: subText,
                style: const TextStyle(
                  color: Color(0xFF75828C),
                  fontSize: 16,
                )),
          ],
        ),
      ),
    );
  }
}
