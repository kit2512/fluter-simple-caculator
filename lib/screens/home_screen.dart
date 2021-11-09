import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/models.dart';
import '../components/components.dart';
import '../constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(25, 30, 35, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const OutputScreen(),
              GridView.count(
                padding: const EdgeInsets.only(top: 26),
                shrinkWrap: true,
                crossAxisCount: 4,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: buildButtons(context),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<CalcButton> buildButtons(BuildContext context) {
    return allCharacters.map(
      (character) {
        if (roundedCharacters.contains(character)) {
          return CalcButton(
            character: character,
            onPressed: character == "="
                ? Provider.of<CalcStateManager>(context, listen: false).calc
                : Provider.of<CalcStateManager>(context, listen: false)
                    .addCharacter,
            rounded: true,
            fillColor: const Color(0xffF6E389),
            textColor: Colors.black,
          );
        } else {
          return CalcButton(
            character: character,
            onPressed: character == "C"
                ? Provider.of<CalcStateManager>(context, listen: false).allClear
                : Provider.of<CalcStateManager>(context, listen: false)
                    .addCharacter,
          );
        }
      },
    ).toList();
  }
}
