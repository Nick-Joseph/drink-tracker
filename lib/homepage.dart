import 'package:drink_tracker/drinkTrackerCard.dart';
import 'package:drink_tracker/widgets/customNavBar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'widgets/customAppbar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Color(0xff23A0FA),
                  child: CircularPercentIndicator(
                    animation: true,
                    radius: 60.0,
                    lineWidth: 10.0,
                    percent: .70,
                    center: Text("70%"),
                    progressColor: Color(0xff003CBF),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: WaterIntakeCard(),
          )
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
