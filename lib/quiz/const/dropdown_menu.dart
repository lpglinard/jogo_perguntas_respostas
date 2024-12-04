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
  String dropdownValue = categoriesList.keys.first;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: size.width - 100,
        child: (DropdownMenu<String>(
          initialSelection: categoriesList.keys.first,
          enableSearch: false,
          enableFilter: false,
          width: size.width - 100,
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
              selectedValue = dropdownValue;
            });
          },
          dropdownMenuEntries: categoriesList.entries
              .map<DropdownMenuEntry<String>>((MapEntry<String, String> entry) {
            return DropdownMenuEntry<String>(
                value: entry.value, label: entry.key);
          }).toList(),
        )),
      ),
    );
  }
}
