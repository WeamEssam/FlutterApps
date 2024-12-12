import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_model.dart';
import 'package:quiz_app/widgets/button_section.dart';
import 'package:quiz_app/widgets/custom_answer_box.dart';
import 'package:quiz_app/widgets/custome_circuler_indicator.dart';
import 'package:quiz_app/widgets/question_number.dart';
import 'package:quiz_app/widgets/question_text.dart';

class CustomeQuizContainer extends StatefulWidget {
  const CustomeQuizContainer({
    super.key,
    required this.quizModel,
    required this.pageIndex,
    required this.pageController,
    required this.onScoreUpdated,
  });
  final QuizModel quizModel;
  final PageController pageController;
  final int pageIndex;
  final Function(int) onScoreUpdated;

  @override
  State<CustomeQuizContainer> createState() => _CustomeQuizContainerState();
}

class _CustomeQuizContainerState extends State<CustomeQuizContainer> {
  String? selectedAnswer;
  int score = 0;

  void checkAnswer() {
    if (selectedAnswer == widget.quizModel.correctAnswer) {
      score++;
      widget.onScoreUpdated(score);

      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 74, right: 10, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: ShapeDecoration(
              color: const Color(0xFF8D83FF),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFB8B2FF)),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomeCirculerStepsIndicator(widget: widget),
                const SizedBox(
                  width: 5,
                ),
                QuestionNumber(widget: widget),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          QuestionText(widget: widget),
          Expanded(
            flex: 2,
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.quizModel.answers.length,
                itemBuilder: (context, index) {
                  return AnswerBox(
                    textAnswer: widget.quizModel.answers[index],
                    onSelected: (String? value) {
                      setState(() {
                        selectedAnswer = value!;
                        checkAnswer();
                        log(score.toString());
                      });
                    },
                    selectedAnswer: selectedAnswer,
                  );
                }),
          ),
          ButtonsSection(
            pageController: widget.pageController,
            pageIndex: widget.pageIndex,
          ),
        ],
      ),
    );
  }
}





//  return GestureDetector(
//                     onTap: () {
//                       isSelected = true;

//                       setState(() {});
//                     },
//                     child: AnswerBox(
//                       isSelected: isSelected,
//                       textAnswer: widget.quizModel.answers[index],
//                       correctAnswer: widget.quizModel.correctAnswer[index],
//                     ),
//                   );