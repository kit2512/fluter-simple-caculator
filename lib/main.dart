import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'models/models.dart';
import 'screens/screens.dart';

void main() {
  runApp(const CalcApp());
}

class CalcApp extends StatelessWidget {
  const CalcApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CalcStateManager>(
      create: (context) => CalcStateManager(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        )),
        home: const HomeScreen(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
