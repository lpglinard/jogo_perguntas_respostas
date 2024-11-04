import 'package:flutter/material.dart';

const Map<String, String> categoriesList = {
  'Conhecimentos gerais': '9',
  'Filmes': '11',
  'Esportes': '21',
  'Geografia': '22',
  'Games': '15',
  'História': '23',
  'Computação': '18'
};

String selectedValue = '';

class DropdownMenuCategories extends StatefulWidget {
  const DropdownMenuCategories({super.key});

  @override
  State<DropdownMenuCategories> createState() => _DropdownMenuCategoriesState();
}

class _DropdownMenuCategoriesState extends State<DropdownMenuCategories> {
  String dropdownValue = "Selecione a categoria";

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: "Selecione a categoria",
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 5.0),
      ),
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          selectedValue = dropdownValue;
        });
      },
      dropdownMenuEntries: categoriesList.entries
          .map<DropdownMenuEntry<String>>((MapEntry<String, String> entry) {
        return DropdownMenuEntry<String>(value: entry.value, label: entry.key);
      }).toList(),
    );
  }
}
