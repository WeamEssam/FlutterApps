import 'package:flutter/material.dart';
import 'package:tunes_app/models/tune_model.dart';
import 'package:tunes_app/widgets/custome_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final List<TuneModel> tunesList = const [
    TuneModel(
      sound: 'audio/assets_note1.wav',
      color: Colors.red,
    ),
    TuneModel(
      sound: 'audio/assets_note2.wav',
      color: Colors.orange,
    ),
    TuneModel(
      sound: 'audio/assets_note3.wav',
      color: Colors.yellow,
    ),
    TuneModel(
      sound: 'audio/assets_note4.wav',
      color: Colors.green,
    ),
    TuneModel(
      sound: 'audio/assets_note5.wav',
      color: Colors.greenAccent,
    ),
    TuneModel(
      sound: 'audio/assets_note6.wav',
      color: Colors.blue,
    ),
    TuneModel(
      sound: 'audio/assets_note7.wav',
      color: Colors.purple,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 41, 40, 40),
        title: const Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: tunesList
            .map(
              (e) => CustomeContainer(tuneModel: e),
            )
            .toList(),
      ),
    );
  }

  // List<CustomeContainer> getTune(List<TuneModel> tune) {
  //   List<CustomeContainer> tunes = [];
  //   for (int i = 0; i < tune.length; i++) {
  //     tunes.add(CustomeContainer(tuneModel: tune[i]));
  //   }
  //   return tunes;
  // }
}
