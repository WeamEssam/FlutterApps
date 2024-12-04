import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/routes_container.dart';

class CustomeOnBoardingWidget2 extends StatelessWidget {
  const CustomeOnBoardingWidget2({
    super.key,
    required this.title,
    required this.description,
    required this.initialPage,
  });

  final String title;
  final int initialPage;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset('assets/images/bike.png'),
          const SizedBox(
            height: 100,
          ),
          Text(
            textAlign: TextAlign.center,
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            textAlign: TextAlign.center,
            description,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 20,
          ),
          RoutesContainer(
            initialPage: initialPage,
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    // Change your radius here
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                backgroundColor: const WidgetStatePropertyAll(Colors.black)),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              child: Text(
                'CREATE AN ACCOUNT',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    // Change your radius here
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                backgroundColor: const WidgetStatePropertyAll(Colors.white)),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 90),
              child: Text(
                'LOGIN',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
