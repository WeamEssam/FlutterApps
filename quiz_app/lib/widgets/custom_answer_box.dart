import 'package:flutter/material.dart';

class AnswerBox extends StatefulWidget {
  const AnswerBox({
    super.key,
    required this.textAnswer,
    required this.selectedAnswer,
    required this.onSelected,
  });
  final String textAnswer;
  final String? selectedAnswer;
  final ValueChanged<String?> onSelected;

  @override
  State<AnswerBox> createState() => _AnswerBoxState();
}

class _AnswerBoxState extends State<AnswerBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: GestureDetector(
        onTap: () {
          widget.onSelected(widget.textAnswer);
        },
        child: Container(
          height: 49,
          width: double.infinity,
          padding: const EdgeInsets.all(5),
          decoration: ShapeDecoration(
            color: widget.selectedAnswer == widget.textAnswer
                ? const Color(0xFF8E84FF)
                : Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9.50),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                widget.selectedAnswer == widget.textAnswer
                    ? Icons.check_circle
                    : Icons.radio_button_unchecked,
                color: widget.selectedAnswer == widget.textAnswer
                    ? const Color(
                        0xFF2B0063) // لون علامة الصح إذا كانت الإجابة مختارة
                    : const Color(0xFF2B0063), // اللون إذا لم تكن مختارة
              ),
              const SizedBox(width: 15),
              Text(
                widget.textAnswer,
                style: const TextStyle(
                  color: Color(0xFF2B0062),
                  fontSize: 16,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Checkbox(
  //                 fillColor: WidgetStateProperty.resolveWith<Color>(
  //                     (Set<WidgetState> states) {
  //                   if (isSelected == true ||
  //                       states.contains(WidgetState.selected)) {
  //                     return const Color(0xFF2B0063);
  //                   }
  //                   return Colors.white;
  //                 }),
  //                 shape: const CircleBorder(),
  //                 value: isSelected ? checkboxValue : checkboxValue,
  //                 onChanged: (newValue) {
  //                   setState(() {
  //                     checkboxValue = newValue!;
  //                   });
  //                 }),








  // GestureDetector(
  //       onTap: () {
  //         isSelected = true;

  //         log(score.toString());
  //         setState(() {});
  //         // for (int i = 0; i < correctAnswers.length; i++) {
  //         //   if (widget.correctAnswer == correctAnswers.first) {
  //         //     score++;
  //         //     setState(() {});
  //         //     log(score.toString());
  //         //     log(correctAnswers[i]);
  //         //   }
  //         // }
  //       },








  //  Icon(
  //               isSelected
  //                   ? Icons.radio_button_checked
  //                   : Icons.radio_button_unchecked,
  //               color: isSelected
  //                   ? const Color(0xFF2B0063) // لون الأيقونة عند التحديد
  //                   : Colors.white, // لون الأيقونة عند عدم التحديد
  //             ),






  //  Radio<String>(
  //               value: widget.textAnswer,
  //               groupValue: widget.selectedAnswer,
  //               onChanged: (value) {
  //                 widget.onSelected(value);
  //               },
  //               activeColor: const Color(0xFF2B0063), // لون الراديو
  //             ),