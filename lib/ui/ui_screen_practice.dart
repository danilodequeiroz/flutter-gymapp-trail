import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ScreenPractice extends StatelessWidget {
  const ScreenPractice({super.key});

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
