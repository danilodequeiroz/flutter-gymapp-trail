import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gymapp/models/model_exercise.dart';
import 'package:flutter_gymapp/models/model_feeling.dart';

class ScreenGymExercise extends StatelessWidget {
  ScreenGymExercise({super.key});

  final Exercise exercise = Exercise(
      id: "EX001",
      name: "Puxada Alta Pronada",
      training: "Treino A",
      howTo: "Segura a barra e puxa");

  final List<Feeling> feelings = [
    Feeling(id: "FE001", feeling: "Pouca ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE003", feeling: "Já senti alguma ativação", date: "2023-07-14")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Text(AppLocalizations.of(context).highPronadePulldownTrainingA),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("Clicked");
            },
            child: const Icon(Icons.plus_one)),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("Enviar Foto")),
              const Text("Como fazer?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              const Text("Segura com as duas mãsos na barra, mantem a coluna reta, e puxa."),
              const Divider(),
              const Text("Como estou me sentindo?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              const Text("Senti bastante ativação hoje!."),
            ],
          ),
        ));
  }
}