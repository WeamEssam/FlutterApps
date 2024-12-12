import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/custome_quiz_container.dart';
import 'package:quiz_app/widgets/list_item_widget.dart';

class QuizView extends StatefulWidget {
  const QuizView({super.key});
  static String routeName = 'quiz view';
  static int getMarks = 0;

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  PageController pageController = PageController();
  int totalScore = 0;

  void updateScore(int score) {
    setState(() {
      totalScore += score;
      QuizView.getMarks = totalScore;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 0.8,
                  colors: [
                    Color(0xFF24243E),
                    Color(0xFF302B63),
                    Color(0xFF0F0C29),
                  ],
                  stops: [0.1, 0.5, 1.0],
                ),
              ),
              child: PageView.builder(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: quizList.length,
                itemBuilder: (BuildContext context, int index) {
                  return CustomeQuizContainer(
                    pageIndex: index,
                    quizModel: quizList[index],
                    pageController: pageController,
                    onScoreUpdated: updateScore,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}


//  LinearGradient(
//                   begin: Alignment(0.26, -0.97),
//                   end: Alignment(-0.26, 0.97),
//                   colors: [
//                     Color(0xFF2B0063),
//                     Color(0xE5060B26),
//                     Color(0xFF2B0063),
//                     Color(0xFF2B0063),
//                     //  Color(0x7F1A1F37),
//                   ],
//                 ),