import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/models.dart';

class OutputScreen extends StatelessWidget {
  const OutputScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color.fromRGBO(53, 55, 59, 1),
      ),
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          verticalDirection: VerticalDirection.up,
          children: [
            Text(
              Provider.of<CalcStateManager>(context).expression,
              textAlign: TextAlign.right,
              style: const TextStyle(color: Colors.white, fontSize: 42),
            ),
            const Divider(
              thickness: 2,
              color: Colors.white,
            ),
            Text(
              Provider.of<CalcStateManager>(context).history,
              textAlign: TextAlign.right,
              style:
                  TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
