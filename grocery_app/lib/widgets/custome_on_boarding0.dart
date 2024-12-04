import 'package:flutter/material.dart';
import 'package:grocery_app/views/on_boarding_view.dart';
import 'package:grocery_app/widgets/routes_container.dart';

class CustomeOnBoardingWidget0 extends StatelessWidget {
  const CustomeOnBoardingWidget0({
    super.key,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.initialPage,
  });
  final String title;
  final String subTitle;
  final String description;
  final int initialPage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/fruits.png'),
          Text(
            textAlign: TextAlign.center,
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            subTitle,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            textAlign: TextAlign.center,
            description,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 35,
          ),
          RoutesContainer(
            initialPage: initialPage,
          ),
          const SizedBox(
            height: 70,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      // Change your radius here
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  backgroundColor:
                      const WidgetStatePropertyAll(Color(0xFFFEC54B))),
              onPressed: () {
                nextPage.animateToPage(
                  1,
                  duration: const Duration(milliseconds: 700),
                  curve: Curves.easeIn,
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 100),
                child: Text(
                  'Next',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ))
        ],
      ),
    );
  }
}
