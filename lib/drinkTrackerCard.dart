import 'package:drink_tracker/bloc/waterintake_bloc.dart';
import 'package:drink_tracker/bloc/waterintake_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:percent_indicator/percent_indicator.dart';

class WaterIntakeCard extends StatefulWidget {
  const WaterIntakeCard({Key? key}) : super(key: key);

  @override
  _WaterIntakeCardState createState() => _WaterIntakeCardState();
}

class _WaterIntakeCardState extends State<WaterIntakeCard> {
  int _waterIntake = 0;
  int _goalIntake = 32; // ounces

  void _incrementWaterIntake() {
    setState(() {
      _waterIntake += 8;
    });
  }

  void _decrementWaterIntake() {
    setState(() {
      _waterIntake = _waterIntake - 8 < 0 ? 0 : _waterIntake - 8;
    });
  }

  double _getPercentComplete() {
    return _waterIntake / _goalIntake;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Water Intake',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            LinearPercentIndicator(
              animation: true,
              width: 350.0,
              lineHeight: 30.0,
              percent: _getPercentComplete(),
              progressColor: Colors.blue,
              center: Text(
                '${_waterIntake.toString()} oz',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: ()=> context.read<WaterIntakeBloc>().add(OuncesIncrease()),
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                  
                  
                ),
                SizedBox(width: 16.0),
                FloatingActionButton(
                  onPressed: _decrementWaterIntake,
                  tooltip: 'Decrement',
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 16.0),
                FloatingActionButton(
                  onPressed: _decrementWaterIntake,
                  child: Text('Add'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
