import 'package:flutter/material.dart';
import 'package:tunes_app/models/tune_model.dart';

class CustomeContainer extends StatelessWidget {
  const CustomeContainer({
    super.key,
    required this.tuneModel,
  });
  final TuneModel tuneModel;
  // final String sound;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => tuneModel.playSound(),
        child: Container(
          //height: 102,
          color: tuneModel.color,
        ),
      ),
    );
  }
}
