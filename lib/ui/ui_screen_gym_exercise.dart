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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("${exercise.name} / ${exercise.training}"),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint("Clicked");
            },
            child: const Icon(Icons.plus_one)),
        body: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: ListView(
            children: [
              SizedBox(
                  height: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                              AppLocalizations.of(context).putPictureKeyLabel)),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                              AppLocalizations.of(context).deletePictureKeyLabel))
                    ],
                  )),
              const SizedBox(height: 8),
              Text(AppLocalizations.of(context).howToDoKeyLabel,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              const SizedBox(height: 8),
              Text(exercise.howTo),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(color: Colors.black45, thickness: 0.75),
              ),
              Text(AppLocalizations.of(context).howAmIFeelingKeyLabel,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  )),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(feelings.length, (index) {
                  Feeling currentFeeling = feelings[index];
                  return ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    title: Text(currentFeeling.feeling),
                    subtitle: Text(currentFeeling.date),
                    leading: const Icon(Icons.keyboard_double_arrow_right_rounded),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete_outline),
                      color: Colors.redAccent,
                      onPressed: () {
                        debugPrint("Deleted\nid:${currentFeeling.id} feeling:${currentFeeling.feeling}");
                      }
                    ),
                  );
                }),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(color: Colors.black45, thickness: 0.75)
              ),
            ],
          ),
        ));
  }
}
