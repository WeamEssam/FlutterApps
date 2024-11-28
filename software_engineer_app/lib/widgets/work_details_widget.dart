import 'package:flutter/material.dart';
import 'package:software_engineer_app/widgets/work_details_section.dart';

class WorkDetailsWidget extends StatelessWidget {
  const WorkDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            WorkDetailsSection(
              number: '17',
              text: 'Projects',
              subText: 'done',
            ),
            WorkDetailsSection(
              number: '92%',
              text: 'Success',
              subText: 'rate',
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            WorkDetailsSection(
              number: '5',
              text: 'Tems',
              subText: '',
            ),
            WorkDetailsSection(
              number: '243',
              text: 'Client',
              subText: 'report',
            ),
          ],
        ),
      ],
    );
  }
}
