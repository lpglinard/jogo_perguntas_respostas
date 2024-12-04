import 'package:flutter/material.dart';

const Map<String, String> difficultyList = {
  'Fácil': 'easy',
  'Médio': 'medium',
  'Difícil': 'hard'
};

String difficultyValue = '';

class DropdownMenuDifficulty extends StatefulWidget {
  const DropdownMenuDifficulty({super.key});

  @override
  State<DropdownMenuDifficulty> createState() => _DropdownMenuDifficultyState();
}

class _DropdownMenuDifficultyState extends State<DropdownMenuDifficulty> {
  String dropdownValue = difficultyList.keys.first;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: size.width - 100,
        child: DropdownMenu<String>(
          width: size.width - 100,
          enableSearch: false,
          enableFilter: false,
          inputDecorationTheme: InputDecorationTheme(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
              fillColor: Colors.white,
              filled: true),
          label: const Text("Escolha a dificuldade"),
          onSelected: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
              difficultyValue = dropdownValue;
            });
          },
          dropdownMenuEntries: difficultyList.entries
              .map<DropdownMenuEntry<String>>((MapEntry<String, String> entry) {
            return DropdownMenuEntry<String>(
                value: entry.value, label: entry.key);
          }).toList(),
        ),
      ),
    );
  }
}
