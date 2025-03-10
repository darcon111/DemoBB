import 'package:flutter/material.dart';
import 'package:speedometer_chart/speedometer_chart.dart';

import '../shared/generalToolbar.dart';

class BuroPage extends StatefulWidget {
  const BuroPage({super.key});

  @override
  State<BuroPage> createState() => _MyAppBuroState();
}

class _MyAppBuroState extends State<BuroPage> {

  @override
  Widget build(BuildContext context) {
    double value = 650;

    return Scaffold(
        appBar: Generaltoolbar(title: 'Buro',),
        body: Center(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 100,
            runSpacing: 50,
            children: [
              SpeedometerChart(
                value: value,
                minValue: 0,
                maxValue: 900,
                valueWidget: Text(value.toString()),
                hasIconPointer: false,
                pointerColor: Colors.black,
                graphColor: const [Colors.red, Colors.yellow,Colors.green],
                minWidget: const Text("1"),
                maxWidget: const Text("900"),
              ),
            ],
          ),
        )
    );
  }
}