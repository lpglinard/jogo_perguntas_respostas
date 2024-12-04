import 'package:flutter/material.dart';
import 'package:jogo_perguntas_respostas/quiz/const/colors.dart';
import 'package:jogo_perguntas_respostas/quiz/const/dropdown_menu.dart';
import 'package:jogo_perguntas_respostas/quiz/const/dropdown_difficulty.dart';
import 'quiz_screen.dart';

class QuizSplashScreen extends StatelessWidget {
  const QuizSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              blue,
              darkBlue,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "image/quizu.png",
              ),
              const SizedBox(height: 20),
              const Text(
                "Seja bem-vindo ao QuizU",
                style: TextStyle(
                  color: lightgrey,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 20),
              const Center(child: const DropdownMenuDifficulty()),
              const SizedBox(height: 20),
              const Center(child: const DropdownMenuCategories()),
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizScreen(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    alignment: Alignment.center,
                    width: size.width - 100,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Iniciar",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
