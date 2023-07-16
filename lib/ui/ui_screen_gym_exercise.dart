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
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
    Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
    Feeling(id: "FE003", feeling: "Já senti alguma ativação", date: "2023-07-14")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Text("${exercise.name} / ${exercise.training}"),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint("Clicked");
            },
            child: const Icon(Icons.plus_one)),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(

            children: [
              ElevatedButton(onPressed: () {}, child: Text(AppLocalizations.of(context).sendPictureKeyLabel)),
              Text(AppLocalizations.of(context).howToKeyLabel,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              Text(exercise.howTo),
              const Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(feelings.length, (index){
                  Feeling currentFeeling = feelings[index];
                  return Text(currentFeeling.feeling);
                }),
              ),
              const Divider(),
            ],
          ),
        ));
  }
}