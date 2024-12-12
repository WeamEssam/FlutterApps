import 'package:flutter/material.dart';
import 'package:quiz_app/views/quiz_view.dart';
import 'package:quiz_app/widgets/custome_start_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String routeName = 'home view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.center, // مركز التدريج
                  radius: 0.8, // مدى الانتشار
                  colors: [
                    Color(0xFF24243E), // لون خارجي
                    Color(0xFF302B63), // لون متوسط
                    Color(0xFF0F0C29), // لون داخلي
                  ],
                  stops: [0.1, 0.5, 1.0], // نقاط التوقف للألوان
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 74,
                    ),
                    const Text(
                      'Good morning,',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                      'New topic is waiting',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14, bottom: 36),
                      child: Image.asset('assets/images/quiz.png'),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, QuizView.routeName);
                      },
                      child: const CustomStartButton(),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
