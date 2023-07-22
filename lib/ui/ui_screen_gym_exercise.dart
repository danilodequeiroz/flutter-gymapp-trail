import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gymapp/_common/colors.dart';
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
    Feeling(id: "FE003", feeling: "Pouca ativação hoje", date: "2023-07-14"),
    Feeling(id: "FE004", feeling: "Alguma ativação hoje", date: "2023-07-15"),
    Feeling(id: "FE005", feeling: "Alguma ativação hoje", date: "2023-07-16"),
    Feeling(
        id: "FE006",
        feeling: "Não consigo mexer o braço na região",
        date: "2023-07-17"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Column(
            children: [
              Text(
                exercise.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Text(exercise.training, style: const TextStyle(fontSize: 15))
            ],
          ),
          centerTitle: true,
          backgroundColor: SelfColors.blue_0xff0A6D92,
          elevation: 0,
          toolbarHeight: 72,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(32))),
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
                          child: Text(AppLocalizations.of(context).putPictureKeyLabel)),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(AppLocalizations.of(context).deletePictureKeyLabel))
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
                      fontWeight: FontWeight.bold, fontSize: 18)),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: getListChildren(),
              ),
              const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(color: Colors.black45, thickness: 0.75)),
            ],
          ),
        ));
  }

  List<Widget> getListChildren() {
    List<Widget> valor = List.generate(feelings.length, (index) {
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
              debugPrint(
                  "Deleted\nid:${currentFeeling.id} feeling:${currentFeeling.feeling}");
            }),
      );
    });
    valor.add(const ListTile(
      title: Center(
          child: Column(
        children: [
          Text("Fim da Lista",
              style: TextStyle(
                fontSize: 14,
              )),
          Text("(;",
              style: TextStyle(
                fontSize: 14,
              ))
        ],
      )),
      // leading: Icon(Icons.keyboard_double_arrow_right_rounded),
      // trailing: Icon(Icons.keyboard_double_arrow_left_rounded),
    ));
    return valor;
  }
}
