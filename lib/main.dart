// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(
        Theme.of(context).textTheme,
      )),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                Container(
                  height: 210,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(53, 55, 59, 1),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                  child: SingleChildScrollView(
                    reverse: true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.end,
                      verticalDirection: VerticalDirection.up,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "69",
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.white, fontSize: 42),
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.white,
                        ),
                        Text(
                          "59+10",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 22),
                        )
                      ],
                    ),
                  ),
                ),
                GridView.count(
                  padding: EdgeInsets.only(top: 26),
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text("C", style: TextStyle(fontSize: 42))),
                    ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text("\$", style: TextStyle(fontSize: 42))),
                    ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text("%", style: TextStyle(fontSize: 42))),
                    ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text("/", style: TextStyle(fontSize: 42))),
                    ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text("7", style: TextStyle(fontSize: 42))),
                    ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text("8", style: TextStyle(fontSize: 42))),
                    ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text("9", style: TextStyle(fontSize: 42))),
                    ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text("4", style: TextStyle(fontSize: 42))),
                    ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text("5", style: TextStyle(fontSize: 42))),
                    ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text("6", style: TextStyle(fontSize: 42))),
                    ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text("1", style: TextStyle(fontSize: 42))),
                    ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text("2", style: TextStyle(fontSize: 42))),
                    ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text("3", style: TextStyle(fontSize: 42))),
                    ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text("C", style: TextStyle(fontSize: 42))),
                    ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text("C", style: TextStyle(fontSize: 42))),
                    ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text("C", style: TextStyle(fontSize: 42))),
                    ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text("C", style: TextStyle(fontSize: 42))),
                    ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text("C", style: TextStyle(fontSize: 42))),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
