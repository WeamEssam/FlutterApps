import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/custome_on_boarding0.dart';
import 'package:grocery_app/widgets/custome_on_boarding1.dart';
import 'package:grocery_app/widgets/custome_on_boarding2.dart';

PageController nextPage = PageController();

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int initialPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        onPageChanged: (value) {
          setState(() {
            initialPage = value;
          });
        },
        controller: nextPage,
        children: [
          CustomeOnBoardingWidget0(
            title: 'Welcome to Fresh Fruits',
            subTitle: 'Grocery application',
            description:
                'Lorem ipsum dolor sit amet, consectetur \n adipiscing elit, sed do eiusmod tempor ',
            initialPage: initialPage,
          ),
          CustomeOnBoardingWidget1(
            initialPage: initialPage,
            title: 'We provide best quality \n Fruits to your family',
            description:
                'Lorem ipsum dolor sit amet, consectetur \n adipiscing elit, sed ',
          ),
          CustomeOnBoardingWidget2(
              initialPage: initialPage,
              title: 'Fast and responsibily \n delivery by our courir ',
              description:
                  'Lorem ipsum dolor sit amet, consectetur \n adipiscing elit, sed do eiusmod tempor ')
        ],
      ),
    );
  }
}
