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
    return DropdownMenu<String>(
      initialSelection: difficultyList.keys.first,
      width: 300,
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 5.0),
      ),
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          difficultyValue = dropdownValue;
        });
      },
      dropdownMenuEntries: difficultyList.entries
          .map<DropdownMenuEntry<String>>((MapEntry<String, String> entry) {
        return DropdownMenuEntry<String>(value: entry.value, label: entry.key);
      }).toList(),
    );
  }
}
